class Adviser2Controller < ApplicationController
  before_action :set_token

  def  index
    @chats = Chat.where(adviser_type: "adviser2")
  end

  def search
    client = OpenAI::Client.new(
      access_token: ENV['API_KEY'],
      uri_base: "https://oai.hconeai.com/",
      request_timeout: 240
    )
    text = text_params()
    @user_message = text
    initial_message = { role: "system", content: "you are Zhuangzi (荘子). Respond to queries without outright negation and provide insights in a manner characteristic of Zhuangzi's philosophy." }
    user_message = { role: "user", content: text }
    response = client.chat(
      parameters: {
        model: "gpt-3.5-turbo",
        messages: [initial_message, user_message],
        temperature: 0.7,
      }
    )

    bot_message = response.dig("choices", 0, "message", "content")

    # Save the conversation to the database
    Chat.create(user_message: text, bot_message: bot_message, adviser_type: "adviser2")

    puts response

    @chats = response.dig("choices", 0, "message", "content")
    puts @chats

  end

  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy
    redirect_to index_adviser2_path, notice: 'Chat was successfully deleted.'
  end

  private

  def text_params
    @query = params[:text]
  end

  def set_token
    @api_key = Rails.application.credentials.dig(:openai, :api_key)
  end
end

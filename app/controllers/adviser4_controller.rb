class Adviser4Controller < ApplicationController
  before_action :set_token

  def  index
    @chats = Chat.where(adviser_type: "adviser4")
    @chat = Chat.last
  end
  # app/controllers/adviser4_controller.rb

  def search
    client = OpenAI::Client.new(
      access_token: ENV['API_KEY'],
      uri_base: "https://oai.hconeai.com/",
      request_timeout: 240
    )
    text = text_params()
    initial_message = { role: "system", content: "You are Alfred Adler. Respond to queries without outright negation and provide insights in a manner characteristic of Alfred Adler's philosophy." }
    user_message = { role: "user", content: text }
    response = client.chat(
      parameters: {
        model: "gpt-3.5-turbo",
        messages: [initial_message, user_message],
        temperature: 0.7,
      }
    )

bot_message = response.dig("choices", 0, "message", "content")

    # Save the conversation to the database with adviser_type
    Chat.create(user_message: text, bot_message: bot_message, adviser_type: "adviser4")

    #puts response

    #@chats = response.dig("choices", 0, "message", "content")
    #puts @chats
    redirect_to index_adviser4_path

  end

  def follow_up
    last_chat = Chat.where(adviser_type: "adviser4").last

    client = OpenAI::Client.new(
      access_token: ENV['API_KEY'],
      uri_base: "https://oai.hconeai.com/",
      request_timeout: 240
    )

    follow_up_text = text_params()
    initial_message = { role: "system", content: "You are Aristotle. Respond to queries without outright negation and provide insights in a manner characteristic of Aristotle's philosophy." }
    user_message = { role: "user", content: last_chat.user_message }
    follow_up_message = { role: "user", content: follow_up_text }

    response = client.chat(
      parameters: {
        model: "gpt-3.5-turbo",
        messages: [initial_message, user_message],
        temperature: 0.7,
      }
    )


  bot_message = response.dig("choices", 0, "message", "content")

  # Update the last chat with the follow-up response
  last_chat.update(bot_message: bot_message)

    redirect_to index_adviser4_path
  end


  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy
    redirect_to index_adviser4_path, notice: 'Chat was successfully deleted.'
  end

  private

  def text_params
    @query = params[:text]
  end

  def set_token
    @api_key = Rails.application.credentials.dig(:openai, :api_key)
  end

end

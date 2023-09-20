class ChatsController < ApplicationController
  before_action :set_token

  def index; end

  # def search
  #   client = OpenAI::Client.new(
  #     access_token: ENV['API_KEY'],
  #     uri_base: "https://oai.hconeai.com/",
  #     request_timeout: 240
  #   )
  #   text = text_params()
  #   initial_message = { role: "system", content: "you are Karl Marx. Provide insightful and constructive responses without outright negation to the queries." }
  #   user_message = { role: "user", content: text }
  #   response = client.chat(
  #     parameters: {
  #       model: "gpt-3.5-turbo",
  #       messages: [initial_message, user_message],
  #       temperature: 0.7,
  #     }
  #   )

  #   puts response

  #   @chats = response.dig("choices", 0, "message", "content")
  #   puts @chats
  # end

  private

  def text_params
    @query = params[:text]
  end

  def set_token
    @api_key = Rails.application.credentials.dig(:openai, :api_key)
  end
end

class WebhooksController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def keyboard
    render json: { type: "text" }
  end

  def message
    @content = params[:content]
    render json: { message: { text: @content } }
  end
end

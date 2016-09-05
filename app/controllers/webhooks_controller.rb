class WebhooksController < ApplicationController
  def keyboard
    render json: { type: "text" }
  end

  def message
    @content = params[:content]
    render json: { message: { text: @content } }
  end
end

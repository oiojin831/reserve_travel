class WebhooksController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def keyboard
    render json: { type: "text" }
  end

  def message
    result = ""
    if params[:content] == "예약"
      @time_slot = TimeSlot.first
      @time_slot.reserve
      result = "예약되엇습니다."
    else
      result = "모라고?"
    end
    render json: { message: { text: result } }
  end
end

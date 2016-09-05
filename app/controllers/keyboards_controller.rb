class KeyboardsController < ApplicationController
  def callback
    render json: { type: "text" }
  end
end

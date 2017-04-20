class RoomsController < ApplicationController
  def show
    @messages = Message.all
  end

  def send_message
    respond_to do |format|
      format.js
    end

  end
end

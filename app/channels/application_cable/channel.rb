module ApplicationCable
  class Channel < ActionCable::Channel::Base
    def subscribed
      stream_from "room_channel_#{params[:room_id]}"
    end

    def unsubscribed
    end
  end
end

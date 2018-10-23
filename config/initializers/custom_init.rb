listener = Listen.to("app/views") do 
  ActionCable.server.broadcast "refresh_channel", {title: "refresh"}
end

listener.start


# initializer :my_custom_preparation do |app|
ActiveSupport::Reloader.to_prepare do
    puts "Reloading now ..."
  end
# end

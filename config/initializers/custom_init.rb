# class Watch
#   def updated?
#     puts "New Watch"
#   end
# end
# initializer :my_custom_preparation do |app|
    puts "aghj"
    app = Rails.application
    app.reloaders << app.config.file_watcher.new(["app/views/restaurants/index.html.erb"]) do 
      puts "ghj"
    end
ActiveSupport::Reloader.to_prepare do
    puts "Reloading now ..."

    # app.reloaders << Watch.new
    # app.reloaders << ActiveSupport::FileUpdateChecker.new([], { "app/views" => [".erb", ".html.erb"]}) do
      # reload!
    # end
    # app.reloaders << ActiveSupport::FileUpdateChecker.new(["app/views/restaurants/index.html.erb"]) do
    #   app.reload!
    # end

end

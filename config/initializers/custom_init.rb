# # # Rails.application.reloaders[1].instance_variable_get("@updated").value

# #   puts "HOOKKKKKK."
#   a = Rails.application.reloaders << Rails.application.config.file_watcher.new(["~/code/Voxoff/Websites/hotload/app/views/restaurants/index.html.erb"]) do 
#         puts "FILE WATCHER"
#         # if self.reload!
#           # puts "yeay"
#         # end
#       end

# #   # b = Rails.application.reloaders << Rails.application.config.file_watcher.new([], {"app/views/restaurants" => [".html", ".html.erb"]}) do 
# #   #       puts "FILE UPDATE CHECKER"
# #   #     end
# #   # c = Rails.application.reloaders << ActiveSupport::FileUpdateChecker.new([], {"app/views/restaurants" => [".html", ".html.erb"]}) do
# #   #       puts "FILE UPDA CHECK W FULL PATH"
# #   #     end
# #   # print "Updated?: "
# #   # puts a[0]&.updated?
# #   # puts b[0]&.updated?


#   ActiveSupport::Reloader.to_prepare do |i|
#     # a.first.execute
#     a.first.execute_if_updated
#   end




# ActiveSupport::EventedFileUpdateChecker.new(["~/code/Voxoff/Websites/hotload/app/views/restaurants/index.html.erb"]) do
    activeadmin_reloader = ActiveSupport::EventedFileUpdateChecker.new(Dir["app/views/**/*"], {}) do
      # ActiveAdmin.application.unload!
      puts "ghj"
      Rails.application.reload_routes!
    end

    ActiveSupport::Reloader.to_prepare do
      activeadmin_reloader.execute_if_updated
    end
    # // triggers on save
    listener = Listen.to("app/views") do 
      # require 'pry'
      # binding.pry
      # byebug
      puts "Wahoos"
      redirect_back(fallback_location: "/")
    end

    listener.start




  # puts print "Updated?: "
  # puts b[0]&.updated?
  # require 'pry'
# ActiveSupport::Reloader.to_prepare do |i|
  # a.first.execute
  # a.first.execute_if_updated

# end
# ActionDispatch::Reloader.to_prepare do 
#   puts "ghjk"
#   a.first.execute_if_updated
# end
  # b = Rails.application.reloaders << ActiveSupport::FileUpdateChecker.new(["~/code/Voxoff/Websites/hotload/app/views/restaurants/index.html.erb"]) do
  #       puts "FILEUPDATECHEKER"
  #     end
  # sleep 10
  # puts "B"
  # puts b[0]
  # puts b[0]&.updated?
  # b.first.execute_if_updated


    # app.reloaders << Watch.new
    # app.reloaders << ActiveSupport::FileUpdateChecker.new([], { "app/views" => [".erb", ".html.erb"]}) do
      # reload!
    # end
# end

# reloader = ActiveSupport::FileUpdateChecker.new(paths) do
#   reload!
# end

# ActiveSupport::Reloader.to_prepare do
#   reloader.execute_if_updated
# end

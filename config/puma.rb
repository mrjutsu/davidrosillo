# # workers Integer(ENV['WEB_CONCURRENCY'] || 2)
# # threads_count = Integer(ENV['MAX_THREADS'] || 5)
# # threads threads_count, threads_count

# # preload_app!

# rackup      DefaultRackup
# port        ENV['PORT']     || 3000
# environment ENV['RACK_ENV'] || 'development'

# # on_worker_boot do
# #   # Worker specific setup for Rails 4.1+
# #   # See: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#on-worker-boot
# #   ActiveRecord::Base.establish_connection
# # end

# # environment ENV["RACK_ENV"]
# threads 0,5

# workers 3
# preload_app!

# on_worker_boot do
# 	ActiveSupport.on_load(:active_record) do
# 		ActiveRecord::Base.establish_connection
# 	end
# end

workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  # Worker specific setup for Rails 4.1+
  # See: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#on-worker-boot
  ActiveRecord::Base.establish_connection
end
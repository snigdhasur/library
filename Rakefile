require_relative 'config/environment.rb'
require 'active_record'
require 'sinatra/activerecord/rake'
 
# task :environment do
#   ENV["ACTIVE_RECORD_ENV"] ||= "development"
#   require_relative './config/environment.rb'
# end
 
# include ActiveRecord::Tasks
# DatabaseTasks.db_dir = 'db'
# DatabaseTasks.migrations_paths = 'db/migrate'
# seed_loader = Class.new do
#   def load_seed
#     load "#{ActiveRecord::Tasks::DatabaseTasks.db_dir}/seeds.rb"
#   end
# end
# DatabaseTasks.seed_loader = seed_loader.new
# load 'active_record/railties/databases.rake'
 
# task :console => :environment do
#   Pry.start
# end

task :console do 
	# this loads our console. it starts the gem 'pry' and gives us access to our program.
	

	def reload!
		load_all 'app'
	end 


	Pry.start

end 


task :reset do 
	# this loads our console. it starts the gem 'pry' and gives us access to our program.
	
	Author.destroy_all
  	User.destroy_all
  	Book.destroy_all
  	Category.destroy_all
  	Checkout.destroy_all
	
end 
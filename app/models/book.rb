class Book < ActiveRecord::Base

	has_many :checkouts
	has_many :users, through: :checkouts
	
	belongs_to :author
	belongs_to :category
	belongs_to :checkout 

end 
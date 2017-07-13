class User < ActiveRecord::Base

	has_many :checkouts
	has_many :books, through: :checkouts

	def check_out_book(book)
		c = Checkout.create(book_id: book.id, user_id: self.id, due_date: Time.now + (2*7*24*60*60), returned: false)
	end 


	def return_book(book)
		c = Checkout.find_by(user: self, returned: false)
		Checkout.update(c.id, :returned => true)
	end 

end 
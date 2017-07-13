class CreateCheckouts < ActiveRecord::Migration[5.1]
  def change
  	create_table :checkouts do |t|
  		t.integer :book_id
  		t.integer :user_id
  		t.date :due_date
  		t.boolean :returned
  	end 
  end
end

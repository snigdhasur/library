
# THREE STEPS
# DROP IT
#  CREATE IT AGAIN
# SEED IT 


jhumpa = Author.create(name: "Jhumpa Lahiri")
rohinton = Author.create(name: "Rohinton Mistry")
salman = Author.create(name: "Salman Rushdie")
gabriel = Author.create(name: "Gabriel Garcia Marquez")
adam = Author.create(name: "Adam Grant")

lauren = User.create(name: "Lauren")
ethan = User.create(name: "Ethan")
snigdha = User.create(name: "Snigdha")
ivan = User.create(name: "Ivan")

goldfinch = Book.create(title: "The Goldfinch")
midnight = Book.create(title: "Midnight's Children")
hundred_years = Book.create(title: "One Hundred Years of Solitude")
originals = Book.create(title: "The Originals")

fiction = Category.create(name: "fiction")
non_fiction = Category.create(name: "non-fiction")

goldfinch.category = fiction
midnight.category = fiction 
hundred_years.category = fiction 
orginals.category = non_fiction 

goldfinch.author = jhumpa
midnight.author = salman 
hundred_years.author = gabriel
orginals.author = adam

jhump.save
salman.save
gabriel.save
adam.save


puts "Hello. What's your name?"
name = gets.chomp
user = User.find_by(name: name)
puts "Welcome back #{user.name}!"
puts "Please choose a category: "
Category.all.each do |category|	
	puts category.name
end 

chosen_category = gets.chomp

puts "Please choose a book to check out"
chosen_category.books.each do |book|
	puts book.name
end 

chosen_title = gets.chomp
book_object = Book.find_by(title: chosen_title)

user.check_out_book(book_object)

puts "Do you want to return the book? (y/n)"


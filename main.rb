require './app'

def main
  app = App.new
  puts 'Welcome to OOP School Library App!'
  option_choice(app)
end

def list_options
  puts "Please choose an option by enteringa number:
    1. List all books
    2. List all people
    3. Create a person
    4. Create a book
    5. Create a rental
    6. List all rentals for a given person id
    7. Exit
    "
end

def option_choice(app)
  loop do
    list_options

    option = user_choice

    case option
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
      app.create_person
    when 4
      app.create_book
    when 5
      app.create_rental
    when 6
      app.list_rentals_by_id
    else
      puts 'Good Bye 👋'
    end
  end
end

def user_choice
  option = gets.chomp.to_i
  while option > 7 || option < 1
    puts 'Please enter a valid option between 1 to 7'
    option = gets.chomp.to_i
  end
  option
end

main

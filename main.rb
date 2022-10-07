require './app'

def main
    app = App.new
    puts "Welcome to OOP School Library App!"
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
    
    def option_choice(app)
        option = input_option
    case choice
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
        puts "Good Bye 👋"
    end 
end 

def user_choice 
    input_option = gets.chomp.to_i
    while input_option > 7 || input_option < 1
        puts "Please enter a valid option between 1 to 7"
        input_option = gets.chomp.to_i
    end 
    input_option
end
    

main

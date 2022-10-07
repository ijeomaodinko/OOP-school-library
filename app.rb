require '.\classroom'
require '.\rental'
require '.\book'
require '.\person'
require '.\student'
require '.\teacher'

class App

def initialize
    @books =[]
    @people = []
    @rentals = []
end 

#to list books 
    def list_book 
        if @books.length == 0
            puts "There are no books"
        else
            @books.each {|id, book| puts " id: {id} Title: #{title}n/n author: {author}"} 
        end 
    end

# to list all people
    def list_people 
        if @person.length == 0
             puts "There are no books"
        else
            @person.each {|id, person| puts " id: {person.id} name: #{person.name}n/n age: {age}"} 
    end 
    end

#to create a person 
    def create_person
        puts "Do you want to create a student(1) or a teacher(2)?"
        puts "[Input the number]"
        person_type = gets.chomp.to_i
        puts "Name :"
        name = gets.chomp
        puts "Age :"
        age = gets.chomp.to_i
        case person_type
        when 1 
            puts "Has parent permission?[Y/N]:"
            parent_permission = gets.chomps.upcase
            @people<< Student.new("unknown", age, name, permission)
        when 2 
            puts "specialization:"
            specialization = gets.chomp.upcase
            teacher = Teacher.new(specialization, age, name)
        end
        puts "Person created successfully \n"
    end

    def create_book
        print "Title"
        title = gets.chomp
        print "Author"
        author = gets.chomp
        @books << Books.new(title,author)
        puts "Book created successfully \n"
    end

    def create_rental
        puts "Select a book from the following list by number"
        @books.each_with_index{|book, index| puts "#{index}) Title: \"#{book.title}\",  Author: #{book.author}"}
        book_number =gets.chomp.to_i
        puts "Select a person from the following by no ID"
        @people.each_with_index do |person, index|
         puts "#{index}) [#{person.class}] Name: #{person.name} ID: #{person.id}, Age: #{person.age}"
        end
        person_number = gets.chomps.to_i
        puts "Date:"
        date = gets.chomps
        @rentals << Rental.new(date, @people[person_number], @books[book_number])
        puts "Rental created successfully \n\n"
    end

    def list_rentals
        print 'ID of person'
        id = gets.chomp
        person = nil
        @people.each {|p| person = p if p.id = id}
        puts 'Rentals: '
        if rental.person.id.to_s == id.to_s
           puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}"
        else 
           puts "There is no person with the id \"#{id}\" registered"
        end  
        end  
    end    
end
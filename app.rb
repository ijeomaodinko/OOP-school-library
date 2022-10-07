require './classroom'
require './rental'
require './book'
require './person'
require './student'
require './teacher'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  # to list books
  def list_books
    if @books.length.zero?
      puts 'There are no books'
    else
      @books.each_with_index { |_id, _book| puts " id: {id} Title: #{title}n/n author: {author}" }
    end
  end

  # to list all people
  def list_people
    if @person.length.zero?
      puts 'There are no books'
    else
      @person.each_with_index do |person, id|
        puts " #{id}: {person.id} name: #{person.name}n/n age: {age}"
      end
    end
  end

  # to create a person
  def add_student(student)
    @people << student
  end

  def add_teacher(teacher)
    @people << teacher
  end

  def create_person
    puts 'Do you want to create a student(1) or a teacher(2)?'
    puts '[Input the number]'
    person_type = gets.chomp.to_i
    puts 'Name :'
    name = gets.chomp
    puts 'Age :'
    age = gets.chomp.to_i
    case person_type
    when 1
      puts 'Has parent permission?[Y/N]:'
      permission = gets.chomps.capitalize
      @people << Student.new('unknown', age, name, permission)
    when 2
      puts 'specialization:'
      specialization = gets.chomp.uppercase
      teacher << Teacher.new(specialization, age, name)
    end
    puts "Person created successfully \n"
  end

  # to create book
  def create_book
    print 'Title'
    title = gets.chomp
    print 'Author'
    author = gets.chomp
    @books << Books.new(title, author)
    puts "Book created successfully \n"
  end

  # to create rental
  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, index| puts "#{index}) Title: \"#{book.title}\",  Author: #{book.author}" }
    book_number = gets.chomp.to_i
    puts 'Select a person from the following by no ID'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name} ID: #{person.id}, Age: #{person.age}"
    end
    person_number = gets.chomps.to_i
    puts 'Date:'
    date = gets.chomps
    @rentals << Rental.new(date, @people[person_number], @books[book_number])
    puts "Rental created successfully \n\n"
  end

  # to create list of rental by id
  def list_rentals_by_id
    print 'ID of person'
    id = gets.chomp
    person = nil
    @rental.each { |p| person = p if p.id == id }
    puts 'Rentals: '
    if rental.person.id.to_s == id.to_s
      puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}"
    else
      puts "There is no person with the id \"#{id}\" registered"
    end
  end
end

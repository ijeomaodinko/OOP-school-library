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
    puts 'There are no books' if @books.empty?
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end

  # to list all people
  def list_people
    if @people.length.zero?
      puts 'There are no people'
    else
      @people.each_with_index do |person, id|
        puts " #{id}: [#{person.class}] name: #{person.name}  age: #{age}"
      end
    end
  end

  # to create a person

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
      permission = gets.chomp.capitalize
      new_student = Student.new('unknown', age, name, permission)
      @people << new_student
    when 2
      puts 'specialization:'
      specialization = gets.chomp
      new_teacher = Teacher.new(specialization, age, name)
      @people << new_teacher
    end
    puts "Person created successfully \n"
  end

  # to create book
  def create_book
    print 'Title'
    title = gets.chomp
    print 'Author'
    author = gets.chomp
    new_books = Book.new(title, author)
    @books << new_books
    puts "Book created successfully \n"
  end

  # to create rental
  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, index| puts "#{index}) Title: \"#{book.title}\",  Author: #{book.author}" }
    book_id = gets.chomp.to_i
    puts 'Select a Person from the following list by number (not ID)'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_id = gets.chomp.to_i
    print 'Date: '
    date = gets.chomp.to_s
    rental = Rental.new(date, @people[person_id], @books[book_id])
    @rentals << rental
    puts "Rental created successfully \n\n"
  end

  # to create list of rental by id
  def list_rentals_by_id
    print 'ID of person: '
    person_id = gets.chomp
    puts 'Rentals: '
    @rentals.each do |rental|
      if rental.person.id.to_s == person_id.to_s
        puts "#{rental.class} #{rental.date} | Book: \"#{rental.book.title}\" rented by #{rental.person.name}"
      end
    end
  end
end

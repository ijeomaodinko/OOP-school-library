require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'
require './rental'

class Person < Nameable
  # the getters and setters accessor
  attr_reader :id
  attr_accessor :name, :age, :rental

  # constructor to initialize the class with instance varibles
  def initialize(age, parent_permission, name = 'Unknown')
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = rental
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def add_rental(book, date, person)
    Rental.new(book, date, person)
  end

  # private method
  private

  def of_age?
    @age >= 18
  end

  def correct_name
    @name
  end
end

# person = Person.new(22, 'maximilianus')
# person.correct_name
# capitalized_person = CapitalizeDecorator.new(person)
# capitalized_person.correct_name
# capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# capitalized_trimmed_person.correct_name

class Person
  # the getters and setters accessor
  attr_reader :id
  attr_accessor :name, :age

  # constructor to initialize the class with instance varibles
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  # private method
  private

  def of_age?
    @age >= 18
  end
end

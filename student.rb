require './person'
class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, parent_permission, name = 'Unknown')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def add_classroom(classroom)
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

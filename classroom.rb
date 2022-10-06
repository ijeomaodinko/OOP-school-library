class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label, _students)
    @label = label
    @students = []
  end

  def hasmany(student)
    @students.push(student)
    student.classroom
  end
end

def belong_to(classroom)
  @students.member?(classroom)
end

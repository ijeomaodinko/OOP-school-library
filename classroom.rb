class classroom 
    attr_accessor :label
    attr_reader :students

    def initialize (label, students)
        @label = label 
        @students = []
    end 

    def has_many (student)
         @students.push(student)
        student.classroom 
    end 
end

def belong_to (classroom)
    @students.member?(classroom)
end 





require './person'
class Student < Person
   def initialize (classroom, name = "unknown", age, parent_permission = True) 
    super(name, age, parent_permission)
    @classroom = classroom
   end


   def play_hooky
    return "¯\(ツ)/¯"
   end 
end
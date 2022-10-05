class Person 
    #the getters and setters accessor
    attr_reader :id
    attr_accessor :name, :parent_permission

    #constructor to initialize the class with instance varibles
    def initialize (name = "unknown", age, parent_permission==True)
        @id = Random.rand (1..1000)
        @name = name
        @age =age
        @parent_permission = true
    end 

    def can_use_services? 
        if age >= 18 && parent_permission
            return true
        end
    end 

    #private method
    private 

        def is_of_age? (age)
            
            if age >= 18
               puts true
               else puts false 
            end
        end 


end

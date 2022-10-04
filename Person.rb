class Person 
    #accessors
    attr_reader :id
    attr_accessor :name, :parent_permission

    #constructor to initialize the class with instance varibles
    def initialize (name = "unknown", age, parent_permission = True)
        @id = Random.rand (1..1000)
        @name = name
        @parent_permission = true
    end 

    # getters for @id, @name and @parent_permission

    def id
        @id
    end

    def name 
        @name
    end

    def parent_permission
        @parent_permission
    end 

    #setters for @name and @parent_permission

    def name = (name)
        @name = name
    end

    def parent_permission = (parent_permission)
        @parent_permission = True
    end

    def is_of_age? (age)
        if age >= 18
           puts true
           else puts false 
        end
    end 

    def can_use_services? (age, parent_permission)
        if age >= 18 && parent_permission = true
            return true
        end
    end 


end

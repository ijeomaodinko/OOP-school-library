require './rental'

class Book 
attr_accessor :title, :author
attr_reader :rental

    def initialize (title, author, rental)
        @title = title
        @author = author 
        @rentals = rentals
    end 

    def belong_to (Book)
        @rentals.member?(Book)
    end 

    def has_many(rental)
        @book.belong_to?(rentals)
    end

    def rent_book (date, person)
        Rental.new(date, person)
    end
end
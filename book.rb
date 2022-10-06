require './rental'

class Book
  attr_accessor :title, :author
  attr_reader :rental

  def initialize(title, author, _rental)
    @title = title
    @author = author
    @rental = []
  end

  def belong_to(book)
    @rental.member?(book)
  end

  def hasmany(_rental)
    @book.belong_to?(rentals)
  end

  def rent_book(date, person)
    Rental.new(date, person)
  end
end

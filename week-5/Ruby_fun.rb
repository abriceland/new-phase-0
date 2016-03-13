class Library
  attr_reader :books
  
  def initialize
      @books = []
  end 
  
  def add(book)
      @books << [book.title, book.author]
  end    
end    


class Book < Library
  attr_reader :title, :author
  
  def initialize(title, author)
      @title = title
      @author = author
  end  

end    


our_library = Library.new
castle = Book.new("I Capture the Castle", "Dodie Smith")
our_library.add(castle)
americanah = Book.new("Americanah", "Chimmie")
our_library.add(americanah)
chands_special_library = Library.new
chands_special_library.add(americanah)
# puts "Chand's library has #{chands_special_library.books}"
# puts "Our library has #{our_library.books}"




class Store
    attr_reader :merchandise, :name
    
    def initialize(name) #sets state
        @merchandise = []
        @name = name
    end
    
    def add_stock(item)  #methods set behaviors
        @merchandise << item.name
    end
    
    def sell(item)
        @merchandise.delete(item.name)
    end    

end


class SellingItem 
    
    def initialize(name)
        @name = name
    end
    
    def name
        @name
    end    
end    

our_store = Store.new("Bootcamp Spectacular")
dress = SellingItem.new("blue dress")
pants = SellingItem.new("black pants")
our_store.add_stock(dress)
our_store.add_stock(pants)
our_store.sell(pants)
p our_store.merchandise

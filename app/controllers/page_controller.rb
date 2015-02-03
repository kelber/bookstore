class PageController < ApplicationController
    
  def home
      @books = Book.last(3)
  end
    
  def dashboard
    @books = current_user.books
  end



end

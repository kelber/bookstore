class PageController < ApplicationController
  def home
      @books = Book.last(2)
  end
    
  def dashboard
    @books = current_user.books
  end



end

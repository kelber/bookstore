class PageController < ApplicationController
    
  def home
      @books = Book.last(3)
  end
    
  def dashboard
    @books = current_user.books
#    @purchases = Sale.where(buyer_email: current_user.email)
 #   @sales = Sale.where(seller_email: current_user.email)
  end




end

class BooksController < ApplicationController
  def new
    @books = Book.new
  end
  
  def create
    @book = Book.new(book_parame)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path
  end
  
  def index
  end

  def show
  end

  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:shop_name, :image, :caption)
  end
end

class BooksController < ApplicationController

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_parame)
    @books =Book.all
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :introduction, :image)
  end
end

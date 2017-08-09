class BooksController < ApplicationController

  def index
  #  @books = Book.all
    @books = Book.paginate :page => params[:page], :per_page => 10
  end

  def show
    @book = Book.find(params[:id])
    @comments = @book.comments
  end
end

def new
  @book = Book.new
end

def create
  @book = Book.new(book_params)

  if(@book.save)
    redirect_to :action => 'index'
  end
end

def book_params
  params.require(:book).permit(:title,:thought)
end
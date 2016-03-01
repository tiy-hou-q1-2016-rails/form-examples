class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by id: params[:id]
  end

  def new
    @book = Book.new
  end

  def create
    # instantiate a blank Book object
    @book = Book.new
    # set the values
    @book.title = params[:book][:title]
    @book.author_id = params[:book][:author_id]
    # save it
    if @book.save
      # redirect to "/books"
      redirect_to "/books"
    else
      render :new
    end
  end
end

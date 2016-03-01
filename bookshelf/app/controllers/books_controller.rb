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
    @book.year = params[:book][:year]
    # save it
    if @book.save
      # redirect to "/books"
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find_by id: params[:id]
  end

  def update
    # instantiant / Find
    @book = Book.find_by id: params[:id]
    # set values
    @book.title = params[:book][:title]
    @book.author_id = params[:book][:author_id]
    @book.year = params[:book][:year]

    # save it
    if @book.save
      # redirect to "/books"
      redirect_to book_path(id: @book.id)
    else
      render :edit
    end
  end

  def delete
    @book = Book.find_by id: params[:id]
    @book.destroy
    redirect_to books_path
  end
end

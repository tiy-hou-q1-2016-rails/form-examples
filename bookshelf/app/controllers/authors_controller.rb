class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find_by id: params[:id]
  end

  def new
    @author = Author.new
  end

  def create
    # instantiate
    @author = Author.new
    # set values
    @author.first_name = params[:author][:first_name]
    @author.last_name = params[:author][:last_name]
    # save
    if @author.save
      redirect_to "/authors"
    else
      render :new
    end
    # redirect or render form
  end
end

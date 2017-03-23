class HomeController < ApplicationController
  skip_before_action :authenticate_user!, except: [:index]

  def index
    # flash = {}
    flash[:info] = 'Welcome to Our App!'
  end

  def about
    flash[:success] = 'About Us Page'
  end

  def pricing
    flash[:success] = 'Pricing Page'
  end

  def contact
    flash[:success] = 'Contact Us Page'
  end

  # For example of when to use flash messages in CRUD
  #  def create
  #    if @some_model.save
  #      flash[:success] = 'Successfully Created model'
  #      redirect_to some_path
  #    else
  #      flash[:error] = 'Error saving model'
  #      render :new
  #    end
  #  end
  # adding stuff to methods would draw in stuff from database, these methods above are static methods
end

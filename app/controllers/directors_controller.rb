class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

  def show
  @director = Director.find_by({:id => params[:id]})

  end

  def new_form

  end

  def create_row
    p = Director.new
    p.dob        = params[:the_dob]
    p.name       = params[:the_name]
    p.bio        = params[:the_bio]
    p.image_url  = params[:the_image_url]
    p.save

    redirect_to("http://localhost:3000/directors")
  end

  def destroy
    p = Director.find_by({:id => params[:id]})
    p.destroy

    redirect_to("http://localhost:3000/directors")
  end

  def edit_form
    @director = Director.find_by({:id => params[:id]})
  end

  def update_row
    p = Director.find_by({:id => params[:id]})
    p.dob        = params[:the_dob]
    p.name       = params[:the_name]
    p.bio        = params[:the_bio]
    p.image_url  = params[:the_image_url]
    p.save

    redirect_to("http://localhost:3000/directors")
  end


end

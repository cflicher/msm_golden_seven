class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

end

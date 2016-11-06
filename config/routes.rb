Rails.application.routes.draw do

  get("/",                        { :controller => "movies", :action => "index" })

# For Director CRUD snd RCAV

#Create
  get("/directors/new_form",      { :controller => "directors", :action => "new_form" })
  get("/create_director",         { :controller => "directors", :action => "create_row" })

 #for Deletion
  get("/delete_director/:id",     { :controller => "directors", :action => "destroy" })

 # for editing photos
  get("/directors/:id/edit",         { :controller => "directors", :action => "edit_form" })
  get("/update_director/:id",        { :controller => "directors", :action => "update_row" })

# Read
  get("/directors",               { :controller => "directors", :action => "index"})
  get("/directors/:id",           { :controller => "directors", :action => "show"})


  # For Actor CRUD snd RCAV

  #Create
    get("/actors/new_form",      { :controller => "actors", :action => "new_form" })
    get("/create_actor",         { :controller => "actors", :action => "create_row" })

   #for Deletion
    get("/delete_actor/:id",     { :controller => "actors", :action => "destroy" })

   # for editing photos
    get("/actors/:id/edit",         { :controller => "actors", :action => "edit_form" })
    get("/update_actor/:id",        { :controller => "actors", :action => "update_row" })

  # Read
    get("/actors",               { :controller => "actors", :action => "index"})
    get("/actors/:id",           { :controller => "actors", :action => "show"})


    # For Movies CRUD snd RCAV

    #Create
      get("/movies/new_form",      { :controller => "movies", :action => "new_form" })
      get("/create_movie",         { :controller => "movies", :action => "create_row" })

     #for Deletion
      get("/delete_movie/:id",     { :controller => "movies", :action => "destroy" })

     # for editing photos
      get("/movies/:id/edit",         { :controller => "movies", :action => "edit_form" })
      get("/update_movie/:id",        { :controller => "movies", :action => "update_row" })

    # Read
      get("/movies",               { :controller => "movies", :action => "index"})
      get("/movies/:id",           { :controller => "movies", :action => "show"})

end

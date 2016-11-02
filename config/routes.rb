Rails.application.routes.draw do

  get("/",                { :controller => "directors", :action => "index" })

#Create
  get("/directors/new_form",       { :controller => "directors", :action => "new_form" })
  get("/create_director",     { :controller => "directors", :action => "create_row" })

 #for Deletion
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })

 # for editing photos
  get("/photos/:id/edit",  { :controller => "directors", :action => "edit_form" })
  get("/update_photo/:id", { :controller => "directors", :action => "update_row" })

# Read
  get("/directors",      { :controller => "directors", :action => "index"})
  get("/directors/:id",  { :controller => "directors", :action => "show"})


end

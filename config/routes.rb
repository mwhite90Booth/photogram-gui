Rails.application.routes.draw do

  ### User Paths
  get("/", { :controller => "users", :action => "index"})
  get("/users", { :controller => "users", :action => "index"})
  get("/users/:username", { :controller => "users", :action => "show"})
  post("/insert_user", { :controller => "users", :action => "insert"})
  post("/update_user/:user_id", { :controller => "users", :action => "update"})

  ### Photo Paths
  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:photo_id", { :controller => "photos", :action => "show"})
  post("/insert_photo", { :controller => "photos", :action => "insert"})
  post("/update_photo/:photo_id", { :controller => "photos", :action => "update"})
  get("/delete_photo/:photo_id", { :controller => "photos", :action => "destroy"})

  ### Comment Paths
  post("/insert_comment", { :controller => "comment", :action => "insert"})

end

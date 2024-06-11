Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", {:controller => "director", :action => "directors"})
  get("/directors/youngest", {:controller => "director", :action => "director_youngest"})
  get("/directors/eldest", {:controller => "director", :action => "director_eldest"})
  get("/directors/:id", {:controller => "director", :action => "director_details"})
  get("/movies", {:controller => "movie", :action => "movies"})
  get("/movies/:id", {:controller => "movie", :action => "movie_details"})
  get("/actors", {:controller => "actor", :action => "actors"})
  get("/actors/:id", {:controller => "actor", :action => "actor_details"})
end

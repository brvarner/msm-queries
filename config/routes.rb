Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", {:controller => "director", :action => "directors"})
  get("/directors/:id", {:controller => "director", :action => "director_details"})
end

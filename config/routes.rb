Rails.application.routes.draw do
    get("/all_guesses", {:controller => "puzzle", :action=>"guesses"})
    get("/show_answer", {:controller => "puzzle", :action=>"answers"})
    get("/",            {:controller=>"puzzle", :action=>"guesses"})
  end

Rails.application.routes.draw do

  root 'places#index'

  # get '/places' => 'places#index'
  get '/places/new' => 'places#new'
  post '/places/' => 'places#create'

  get '/places' => 'places#index'
  get '/places/:id' => 'places#show', :as => "place"

  # get '/places/:id/delete' => 'places#delete'
  get '/places/:id/edit' => 'places#edit'
  # get '/places/:id/submit_edit' => 'places#update'
  patch '/places/:id' => 'places#update'

  delete '/places/:id' => 'places#delete'

  # get '/reviews/:place_id/submit_new'  => 'reviews#create'
  post '/reviews' => 'reviews#create'

end

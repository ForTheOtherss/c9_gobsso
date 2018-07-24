Rails.application.routes.draw do
  devise_for :users
  # Create
  get '/notes/new' => 'notes#new' 
  post '/notes' => 'notes#create' 
  
  # Read 
  get '/notes' => 'sites#study'  
  get '/notes/:id' => 'notes#show'  

  # Update
  get '/notes/:id/edit' => 'notes#edit'  
  patch '/notes/:id' => 'notes#update' 
    
  # Destroy
  delete '/notes/:id' => 'notes#destroy'
  
  
  
  #### Comment
  # Create
  post '/comments' => 'comments#create'
  
  # Destroy
  delete '/comments/:id' => 'comments#destroy'
  
  

  

  #### site
  get '/club_content' => 'sites#club_content'
  get '/competition' => 'sites#competition'
  
  
  #### club
  # Create
  get '/club/new' => 'club#new'
  post '/club' => 'club#create' 
    
  # Read 
  get '/club' => 'sites#club'
  get '/club/:id' => 'club#show'  
  
  # Update
  get '/club/:id/edit' => 'club#edit' 
  patch '/club/:id' => 'club#update' 
    
  # Destroy
  delete '/club/:id' => 'club#destroy' 
  
  
  ### 메인 페이지
  root to: 'sites#index'
  
end


  

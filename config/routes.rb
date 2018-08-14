Rails.application.routes.draw do
  devise_for :users
  #### study 
  # Create
  get '/study/new' => 'notes#new_study' 
  post '/study' => 'notes#create' 
  
  # Read 
  get '/study' => 'sites#study'
  get '/study/:id' => 'notes#show_study'  

  # Update
  get '/study/:id/edit' => 'notes#edit_study'  
  patch '/study/:id' => 'notes#update' 
    
  # Destroy
  delete '/study/:id' => 'notes#destroy'
  
  #### club
  # Create
  get '/club/new' => 'notes#new_club'
  post '/club' => 'notes#create' 
    
  # Read 
  get '/club' => 'sites#club'
  get '/club/:id' => 'notes#show_club'  
  
  # Update
  get '/club/:id/edit' => 'notes#edit_club' 
  patch '/club/:id' => 'notes#update' 
    
  # Destroy
  delete '/club/:id' => 'notes#destroy' 
  
  #### site
  get '/club_content' => 'sites#club_content'
  get '/competition' => 'sites#competition'
  
  #### Comment
  # Create
  post '/comments' => 'comments#create'
  
  # Destroy
  delete '/comments/:id' => 'comments#destroy'


  #### MyPage
  get '/info' => 'mypage#info'
  get '/notes_list' => 'mypage#notes_list'

  ### 메인 페이지
  root to: 'sites#index'
end
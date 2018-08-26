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
  
  
  #### Favorites
  post '/club/:id/favorites' => 'favorites#favorite_toggle', as: 'favorite_article'
  post '/club/:id/favorites2' => 'favorites#favorite_toggle2'
  
  #### Apply
  # new, create
  get '/club/:id/apply/new' => 'applies#new_apply'
  post '/club/:id/apply' => 'applies#create'
  
  #show
  get 'club/:id/apply' => 'applies#show_apply'
  
  
  
  #### site
  get '/club_content' => 'sites#club_content'
  get '/competition' => 'sites#competition'
  
  
  
  #### Comment
  # Create
  post '/comments' => 'comments#create'
  
  # Destroy
  delete '/comments/:id' => 'comments#destroy'


  #### MyPage
  get '/mypage/info' => 'mypage#info'
  get '/mypage/info/check_password' => 'mypage#info2'
  get '/mypage/info/change' => 'mypage#info3'
  get '/mypage/info/complete' => 'mypage#info4'
  get '/mypage/notes_list' => 'mypage#notes_list'
  
  
  
resources :club do
  member do
     put "like", to: "notes#upvote"
     put "dislike", to: "notes#downvote"
  end
end



  
  ### 메인 페이지
  root to: 'sites#index'
end
Rails.application.routes.draw do


  #Users Routes
  get '/users' => 'user#index'
  post '/users' => 'user#create'
  get 'users/:id/posts' => 'user#show'

  #Posts Routes
  get '/posts' => 'post#posts'
  get '/posts/:id' => 'post#show'
  get 'posts/:id/comments/' => 'post#show_comments_by_post_id'
  delete 'posts/:id' => 'post#destroy'

  #Comments Routes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

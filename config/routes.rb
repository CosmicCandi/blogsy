Rails.application.routes.draw do


  #Users Routes
  get '/users' => 'blogsy#users'
  post '/users' => 'blogsy#create'
  get 'users/:id/posts' => 'blogsy#show_posts_by_user_id'

  #Posts Routes
  get '/posts' => 'blogsy#posts'
  get '/posts/:id' => 'blogsy#show_post_by_id'
  get 'posts/:id/comments/' => 'blogsy#show_post_comments_by_post_id'
  delete 'posts/:id' => 'blogsy#destroy'

  #Comments Routes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

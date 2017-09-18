Rails.application.routes.draw do
  root "home#index"

  get '/auth/github', as: :github_login
  get '/auth/github/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

# is all the info displayed on same page and page reloaded
# or separate pages for separate info
#resources :users, only: :show do
  get '/profile', to: 'users#show'
  get '/recent-activity', to: 'activity#index'
  get '/following', to: 'following#index'
  get '/organizations', to: 'organizations#index'
  get '/repos', to: 'repos#index'
  #end
  # resources :users do
  #   member do
  #     get 'profile'
  #   end
  # end
end

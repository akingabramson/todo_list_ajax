AjaxDemo::Application.routes.draw do
  root :to => "Users#new"

  resources :todo_lists
  resources :secrets
  resource :session
  resources :users
end

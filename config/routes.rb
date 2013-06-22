AjaxDemo::Application.routes.draw do
  root :to => "Users#new"

  resources :todo_lists, :only => [:index, :create, :destroy] do
    member do 
      resources :items, :only => [:create, :destroy]
    end
  end
  resource :session
  resources :users
end

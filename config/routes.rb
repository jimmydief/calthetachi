Calthetachi::Application.routes.draw do

  resources :posts do
    resources :comments, :only => [:create, :destroy]
  end
  
  root :to => "landing#index"

end

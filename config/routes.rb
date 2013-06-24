Calthetachi::Application.routes.draw do

  root :to => "landing#index"
  
  resources :posts, :path => "news" do
    resources :comments, :only => [:create, :destroy]
  end

  resources :photos, :only => [:index, :show], :as => "photo_album"

end

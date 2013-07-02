Calthetachi::Application.routes.draw do

  root :to => "landing#index"
  
  match "about" => "landing#about", :as => "about_us"
  match "rush" => "landing#rush", :as => "rush"
  match "contact" => "landing#contact", :as => "contact"
  
  resources :posts, :path => "news" do
    resources :comments, :only => [:create, :destroy]
  end

  resources :photos, :only => [:index, :show], :as => "photo_album"

end

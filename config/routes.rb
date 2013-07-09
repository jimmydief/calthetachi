Calthetachi::Application.routes.draw do

  get "errors/not_found"

  get "errors/internal"

  root :to => "landing#index"
  
  match "about" => "landing#about", :as => "about_us"
  match "rush" => "landing#rush", :as => "rush"
  match "actives" => "landing#actives", :as => "actives"
  match "alumni" => "landing#alumni", :as => "alumni"
  match "contact" => "landing#contact", :as => "contact"
  
  match "member_zone" => "member_zone#index", :as => "member_zone"
  
  resources :posts, :path => "news" do  
    resources :comments, :only => [:create, :destroy]
  end

  resources :photos, :only => [:index, :show], :as => "photo_album"
  
  # Error handling
  match "/404", :to => "errors#not_found"
  match "/500", :to => "errors#internal"

end

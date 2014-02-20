BrandSizeSearch::Application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "top#index"
  get "/top/index"
  get "/top/information"
  get "/top/size"
  get "/search/:sizes" => "top#search", :as => :top
end

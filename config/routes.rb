Rails.application.routes.draw do
  devise_for :users, :controllers => { :invitations => 'users/invitations' }
  resources :users
  resources :internal_notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  get 'pricing' => "pages#pricing"
  get 'dashboard' => "pages#dashboard"
  #get 'users/:id/edit' => 'users#edit', :as => :user


  get 'priorities' => "pages#priorities"
  get 'discussions' => "pages#discussions"
end

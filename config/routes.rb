Itcursos::Application.routes.draw do
  resources :courses do
  	collection do
  		get 'promo'
  		post 'update_promo'
  	end
  end
  devise_for :users
  root :to => 'welcome#index'
end

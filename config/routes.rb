Itcursos::Application.routes.draw do
  resources :courses, :except => :show do
  	collection do
  		get 'promo'
  		post 'update_promo'
  	end
    member do
      resources :email_templates, :except => :index, :shallow => true
      resources :course_promotions, :except => :show, :shallow => true
    end
  end

  devise_for :users
  root :to => 'welcome#index'
end

Itcursos::Application.routes.draw do
  get "welcome/index"

  resources :courses
  root :to => 'welcome#index'
end

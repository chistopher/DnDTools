Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/login'

  resources :quests
  resources :npcs

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

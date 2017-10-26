Rails.application.routes.draw do
  get 'welcome/index'

  resources :quests

  resources :npcs

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/login'

  resources :quests
  resources :npcs

  get 'spells', to: 'spells#index'
  get 'spells/:id', to: 'spells#show'

  get 'monsters', to: 'monsters#index'
  get 'monsters/:id', to: 'monsters#show'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

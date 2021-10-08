Rails.application.routes.draw do
  resources :cats, only: [:index, :show, :new, :update, :edit] 
end

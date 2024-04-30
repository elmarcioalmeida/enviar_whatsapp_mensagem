Rails.application.routes.draw do
  get 'contatos/new', to: 'contatos#new'
  post 'contatos', to: 'contatos#create'
  get 'contatos/show', to: 'contatos#show'
  root to: 'contatos#new'
  resources :contatos
  get 'enviar_whatsapp', to: 'contatos#enviar_whatsapp', as: 'enviar_whatsapp'

 
   
end


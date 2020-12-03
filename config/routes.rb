Rails.application.routes.draw do
  resources :loans, defaults: {format: :json}, only: [ :index, :show ] do
	  # payment action
	  resources :payments, defaults: {format: :json}, only: [ :create ]
  end
end

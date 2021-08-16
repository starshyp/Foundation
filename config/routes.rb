Rails.application.routes.draw do

  resources :address_geocodes
  resources :leads
  resources :elevators
  resources :columns
  resources :batteries
  resources :customers
  resources :addresses
  resources :building_details
  resources :buildings
  resources :quotes
	root "rocket#index"
  
	post "/home/testpost", to: "home#testpost"
	get "/index", to: "rocket#index"
	get "/quote", to: "rocket#quote"
	get "/residential", to: "rocket#residential"
	get "/commercial", to: "rocket#commercial"

  authenticate :user do
  # get "/interventions/new", to: "rocket#interventions"
  get "/interventions/new", to: "interventions#new"
  end

	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #mount RailsAdmin::Engine => '/intervention', as: 'intervention'
	resources :employees
  resources :interventions
  #resources :interventions
	get 'home/index'
	get 'home_controller/index'
	devise_for :users     

	post "/quotes/create", to: "quotes#create"

	post "/leads/create", to: "leads#create"

	get "/watson/refreshaudio", to: "watson#refreshaudio"

  post "/interventions", to: "interventions#create"

  # get "/interventions", to: "rocket#intervention"

  get "/refreshbuildings", to: "interventions#refreshbuildings"
  get "/refreshbatteries", to:   "interventions#refreshbatteries"
  get "/refreshcolumns", to: "interventions#refreshcolumns"
  get "/refreshelevators", to: "interventions#refreshelevators"
  # get "intervention/show"
  get '/machineLearning', to: 'rocket#machineLearning'
end
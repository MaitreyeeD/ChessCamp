Rails.application.routes.draw do

	resources :instructors
	resources :camps
	resources :curriculums
	resources :locations
	resources :camp_instructors
	resources :users

	get 'home', to: 'home#index', as: :home
	get 'home/about', to: 'home#about', as: :about
	get 'home/contact', to: 'home#contact', as: :contact
	get 'home/privacy', to: 'home#privacy', as: :privacy

	root 'home#index'


  # get 'camp_instructors/new', to: 'camp_instructors#new', as: :new_camp_instructor
  # post 'camp_instructors', to: 'camp_instructors#create', as: :camp_instructors
  # get 'camp_instructors/destroy', to: 'campinstructors#destroy', as: :destroy_camp_instructor
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

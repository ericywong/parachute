Rails.application.routes.draw do
  root 'clean_blogs#index'
  get  'about' 	=> 'clean_blogs#about'
  get  'post' 	=> 'clean_blogs#post'
  get  'contact' 	=> 'clean_blogs#contact'

  # Routes for the website
  get "getstarted", to: "pages#getstarted"
  get "faqs", to: "pages#faqs"
  get "microcred", to: "pages#microcred"
  get "contactus", to: "pages#contactus"

  get "index", to: "pages#index"

  #resources :airtable, :collection=>{:test => :get, :do_test => :post}
  resources :airtable

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  root 'static_pages#top'
  
  get '/signup', to: 'users#new'
  get '/index_result', to: 'users#index_result'
  get 'going_to_work_index'
  get '/basic_info', to: 'users#basic_info'
  patch '/basic_info_update', to: 'users#basic_info_update'
  
  get '/login', to: 'sessions#new'
  get '/test_login', to: 'sessions#general_user'
  get '/test_admin', to: 'sessions#admin_user'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users do
    collection { post :import}
    member do
      get 'one_week', to: 'users#show_one_week'
      get 'edit_basic_info'
      patch 'update_basic_info'
      get 'attendances/edit_one_month'
      get 'attendances/edit_one_week'
      patch 'attendances/all_update'
    end
    resources :attendances, only: :update
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
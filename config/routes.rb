Hobbies::Application.routes.draw do
  resources :classrooms do
    get :buy, :on => :member
  end
  resources :partners do
    resources :classrooms
  end

  devise_for :users

  resources :users, :only => [:index, :edit, :update, :in_queue]
  match '/users/queue' => 'users#index', as: 'in_queue_users', queue: true


  root to: 'classrooms#index'

end

Rails.application.routes.draw do

 resources :students, only: [:new, :create, :index, :show, :destroy] do
    resources :steps, only: [:show, :update], controller: 'student/steps'
  end

  resources :employees, only: [:new, :create, :index, :show, :destroy] do
    resources :steps, only: [:show, :update], controller: 'employee/steps'
  end


  root to: 'employees#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

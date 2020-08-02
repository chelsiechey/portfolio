Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'educations#index'
  resources :educations do
    resources :courses, shallow: true
  end

  resources :courses do
    resources :categories
  end
end


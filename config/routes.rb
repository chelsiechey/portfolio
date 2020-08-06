Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :educations do
    collection do
      get 'math' => 'educations#math', as: :math
      get 'computer-science' => 'educations#computer_science', as: :computer_science
    end
    resources :courses, shallow: true
  end



  resources :courses do
    resources :categories
  end

  resources :projects
  get ":page" => "pages#show"
end


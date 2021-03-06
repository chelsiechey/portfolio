Rails.application.routes.draw do
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
  resources :blogs

  resources :projects
  get ":page" => "pages#show"


  devise_for :admins, :controllers => { registrations: 'admins/registrations'}
end


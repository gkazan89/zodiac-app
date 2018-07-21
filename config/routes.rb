Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/signs" => "signs#index"
  get "/signs/:id" => "signs#show"
  post "/signs" => "signs#create"
  patch "/signs/:id" => "signs#update"
  delete "/signs/:id" => "signs#destroy"
end

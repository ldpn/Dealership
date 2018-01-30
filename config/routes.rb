Rails.application.routes.draw do
	root "implements#index"
  get "implements" => "implements#index"
  get "implements/:id" => "implements#show", as: "implement"
end

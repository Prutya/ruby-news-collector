Rails.application.routes.draw do
  scope '/api' do
    scope '/v1' do
      scope 'posts' do
        get '/'    => 'posts_api_v1#index'
        get '/:id' => 'posts_api_v1#show'
      end
    end
  end

  resources :posts, only: [:index]

  root 'posts#index'
end

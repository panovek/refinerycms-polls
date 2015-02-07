Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :polls do
    resources :questions, :path => '', :only => [:index, :show] do
      member do
        post 'submit'
        get 'widget'
      end
    end
  end


  # Admin routes
  namespace :polls, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      #hack for delete action in admin, it can't handle nested routes
      get "/refinery/questions/:question_id/answers" => "refinery/polls/admin/answers#index", :as => :answer
      resources :questions, :except => :show do
        collection do
          post :update_positions
        end
        resources :answers, :except => :show do
          collection do
            post :update_positions
          end
        end
      end
    end
  end

end

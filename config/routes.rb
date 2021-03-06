Autobots::Application.routes.draw do

  resources :ms_rnc_sgsns

  resources :ms_locations

  resources :raw_speedtests, :only => [:index, :show]

  resources :raw_pings, :only => [:index, :show]

  resources :raw_youtubes, :only => [:index, :show]

  resources :raw_https, :only => [:index, :show]

  resources :filters

  resources :links

  resources :nodes

  resources :time_configs

  resources :sgsns

  resources :rncs

  resources :visualizations

  resources :services do
    resources :metrics
  end

  resources :metrics do
    resources :filters
    resources :vspecs
    resources :selectfs
  end

  resources :metric_youtubes

  resources :metric_speedtests

  resources :metric_https

  resources :metric_pings

  devise_for :users
  resources :users

    # API V1
  namespace :api, defaults: {:format=> 'json'} do
    namespace :v1 do
      # Facebook
      resources :facebooks do
        collection do
          get 'metric'
          get 'heatmap'
          get 'force'
          get 'metric_by_region'
        end

        member do
          get 'mapreduce'
          get 'mapreduce_join_mslocation'
        end
      end

      # Twitter
      resources :twitters do
        collection do
          get 'metric'
        end

        member do
          get 'mapreduce'
          get 'mapreduce_join_mslocation'
        end
      end

      # Instagram
      resources :instagrams do
        collection do
          get 'metric'
        end

        member do
          get 'mapreduce'
          get 'mapreduce_join_mslocation'
        end
      end

      # Ping
      resources :pings do
        collection do
          get 'metric'
        end

        member do
          get 'mapreduce'
          get 'mapreduce_join_mslocation'
        end
      end

      # Speedtest
      resources :speedtests do
        collection do
          get 'metric'
        end

        member do
          get 'mapreduce'
          get 'mapreduce_join_mslocation'
        end
      end

      # Youtubes
      resources :youtubes do
        collection do
          get 'metric'
        end

        member do
          get 'mapreduce'
          get 'mapreduce_join_mslocation'
        end
      end

      # Adhocs
      resources :adhocs do
        collection do
          get 'heatmap'
        end

        member do
        end
      end

      # Timeconfig
      resources :time_configs do
        collection do
        end

        member do
        end
      end

    end
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root to: "static_pages#index"

  get 'heatmap' => 'static_pages#heatmap'
  get 'dashboards' => 'static_pages#dashboards'
  get 'access_denied' => 'static_pages#access_denied'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

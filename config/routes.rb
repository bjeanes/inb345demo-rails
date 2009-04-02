ActionController::Routing::Routes.draw do |map|
  map.resources :people

  map.resources :groups

  map.root :controller => 'people', :action => 'index'
end

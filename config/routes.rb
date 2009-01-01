ActionController::Routing::Routes.draw do |map|
  map.buildout ':c/:a.buildout', :controller => 'buildouts', :action => 'show'
end

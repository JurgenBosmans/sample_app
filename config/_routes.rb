ActionController::Routing::Routes.draw do |map|
  map.home '/', :controller => 'pages', :action => 'home'
 map.root :controller => 'pages', :action => 'home'
  map.contact '/contact', :controller => 'pages', :action => 'contact'
  map.about '/about', :controller => 'pages', :action => 'about'
  # map.help '/help', :controller => 'pages', :action => 'help'
end

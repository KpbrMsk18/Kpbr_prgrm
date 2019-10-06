Rails.application.routes.draw do
  get '/works' => "home#works"
  get '/about' => "home#about"
  get '/' => "home#top"
end

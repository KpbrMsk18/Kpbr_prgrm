
Rails.application.routes.draw do
  #get 'request/connection'
  get 'request' => 'request#connection'
end

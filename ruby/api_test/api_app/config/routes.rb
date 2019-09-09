#2019.09.08 API呼出機能実装実験

Rails.application.routes.draw do
#  get 'api/success'
  get 'api' => 'api#success'
end

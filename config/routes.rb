Rails.application.routes.draw do
  # 「https://sample.example.com」というサイトがあった場合、「https://sample.example.com/」のURLを呼び出すとDictionariesControllerのindexアクションを呼び出す
  get '/' => 'word_dictionaries#index'

  resources :word_dictionaries, only: [:index, :create, :update, :delete]
end

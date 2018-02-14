module Fuga
  class Item < Fuga::Base
    has_many :user_items, class_name: 'Hoge::UserItem', source: 'Hoge:::UserItem'
    has_many :users, through: :user_items, class_name: 'Hoge::User', source: 'Hoge::User'
  end
end

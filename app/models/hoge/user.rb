module Hoge
  class User < Hoge::Base
    has_many :user_items
    has_many :items, through: :user_items, class_name: 'Fuga::Item', source: 'Fuga::Item'
  end
end

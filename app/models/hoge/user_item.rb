module Hoge
  class UserItem < Hoge::Base
    belongs_to :user
    belongs_to :item, class_name: 'Fuga::Item'
  end
end

module Hoge
  class UsersController < Hoge::BaseController
    def index
      render json: Hoge::User.all
    end
  end
end

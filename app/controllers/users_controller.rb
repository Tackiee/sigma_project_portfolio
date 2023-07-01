class UsersController < ApplicationController
    def show
        @userinfo = User.find(params[:id])
    end

end

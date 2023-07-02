class HomeController < ApplicationController
    before_action :move_to_signed_in, except: [:index]
    def index
        if authenticate_user!
            @userinfo = User.find(current_user.id)
        end
    end
end

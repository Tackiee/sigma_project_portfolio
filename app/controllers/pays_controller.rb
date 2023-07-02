class PaysController < ApplicationController
    def new
        @pay = Pay.new
    end

    def create
        pay = Pay.new(pay_params)
        pay.user_id = current_user.id
        if pay.save
          redirect_to :action => "result", :id => pay.id
        else
          redirect_to :action => "new"
        end
    end

    def result
        @pay = Pay.find(params[:id])
        @user = User.find(@pay.user_id)
    end

    def receive 
        @pay = Pay.find(params[:id])
        @user = User.find(@pay.user_id)
    end

    def deal
        
    end

    private
    def pay_params
        params.require(:pay).permit(:money, :user_id)
    end
end

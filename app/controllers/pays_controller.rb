class PaysController < ApplicationController
    def SplitTheBill
    end

    def new
        @pay = Pay.new
    end

    def create
        pay = Pay.new(pay_params)
        if pay.save
          redirect_to :action => "result", :id => pay.id
        else
          redirect_to :action => "new"
        end
    end

    def result
        @pay = Pay.find(params[:id])
    end

    private
    def pay_params
        params.require(:pay).permit(:money)
    end
end

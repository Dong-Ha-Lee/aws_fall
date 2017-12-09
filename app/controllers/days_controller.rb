class DaysController < ApplicationController
    def index
        @e = Day.all
    end
    def create
        @e = Day.create(title: params[:title], date: params[:date], done: false)
        redirect_to "/days"
    end
    def edit
        
    end
    def show
        @e = Day.find(params[:id])
        @c = Checklist.where(day_id: params[:id])
    end
    def update
    end
    def destroy
        @e = Day.find(params[:id])
        @e.destroy
        redirect_to "/days"
    end
end

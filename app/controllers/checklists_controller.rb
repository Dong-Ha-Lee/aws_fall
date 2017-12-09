class ChecklistsController < ApplicationController
    def create
        @c = Checklist.create(day_id: params[:id], title: params[:title], done:false)
        redirect_to "/days/#{params[:id]}"
    end
    def update
        @c = Checklist.find(params[:id])
        if params[:done] == false
            @c.update_attributes(done: false) 
         else
            @c.update_attributes(done: false)
        end
        redirect_to :back
    end
    
    def destroy
        @c = Checklist.find(params[:id])
        @c.destroy
        redirect_to :back
    end
    
end

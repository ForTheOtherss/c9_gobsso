class ClubController < ApplicationController
    before_action :authenticate_user!
    
    
    def new
    end
    
    def create
        c = Club.new
        c.title = params[:input_title]
        c.content = params[:input_content]
        c.user = current_user
        c.save
        
        redirect_to "/club"
    end
    
    
    def show
        @club = Club.find(params[:id])
    end
    
    def destroy
        @club = Club.find(params[:id])
        @club.destroy
            
        redirect_to "/club"
    end
    
    def edit
        @club = Club.find(params[:id])
    end
    
    def update
        club = Club.find(params[:id])
        club.title = params[:input_title]
        club.content = params[:input_content]
        club.save
        
        redirect_to "/club/#{club.id}"
    end
end

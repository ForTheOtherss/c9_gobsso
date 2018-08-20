class AppliesController < ApplicationController
    def new_apply
        @club = Club.find(params[:id])
    end
    
    def create
        a = Apply.new
        a.club_id = params[:club_id]
        a.contact = params[:input_contact]
        a.answer1 = params[:input_answer1]
        a.answer2 = params[:input_answer2]
        a.answer3 = params[:input_answer3]
        a.answer4 = params[:input_answer4]
        a.answer5 = params[:input_answer5]
        a.answer6 = params[:input_answer6]
        a.answer7 = params[:input_answer7]
        a.answer8 = params[:input_answer8]
        a.answer9 = params[:input_answer9]
        a.answer10 = params[:input_answer10]
        
        a.save
        # binding.pry
        redirect_to "/club"
    end
    
    def show_apply
        @club = Club.find(params[:id])
    end
    
end

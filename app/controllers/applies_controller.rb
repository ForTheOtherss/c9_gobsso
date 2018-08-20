class AppliesController < ApplicationController
    def new_apply
        @club = Club.find(params[:id])
    end
    
    def create
        c = Club.find(params[:id])
        c.answer1 = params[:input_answer1]
        c.answer2 = params[:input_answer2]
        c.answer3 = params[:input_answer3]
        c.answer4 = params[:input_answer4]
        c.answer5 = params[:input_answer5]
        c.answer6 = params[:input_answer6]
        c.answer7 = params[:input_answer7]
        c.answer8 = params[:input_answer8]
        c.answer9 = params[:input_answer9]
        c.answer10 = params[:input_answer10]
        c.save
        redirect_to "/#{params[:input_mainCategory]}"
    end
end

class MypageController < ApplicationController
    def info
        @mypage = request.env['PATH_INFO']
        
    end
    
    def notes_list
        @mypage = request.env['PATH_INFO']
        @club = current_user.notes.where(mainCategory: 'club').order("created_at DESC")
    end
end

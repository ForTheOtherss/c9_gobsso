class MypageController < ApplicationController
    def info
        @mypage = request.env['PATH_INFO']
    end
    
    def notes_list
        @mypage = request.env['PATH_INFO']
    end
end

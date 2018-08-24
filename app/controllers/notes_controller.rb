class NotesController < ApplicationController
    before_action :authenticate_user!
    before_action :lnb_class1, only: [:edit_study, :new_study, :show_study]
    before_action :lnb_class2, only: [:edit_comp, :new_comp, :show_comp]
    before_action :lnb_class3, only: [:edit_club, :new_club, :show_club]
    before_action :log_impression, :only=> [:show_club]

    
    def lnb_class1
        @study = 'bg-color1 white'
    end
    
    def lnb_class2
        @comp = 'bg-color1 white'
    end
    
    def lnb_class3
        @club = 'bg-color1 white'
    end
        
    def log_impression
      @hit_post = Note.find(params[:id])
      # this assumes you have a current_user method in your authentication system
      @hit_post.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
    end

    
    
    def new_study
    end
    
    def new_club
    end
    
    # 좋아요 싫어요 기능
    def upvote
        @note = Note.find(params[:id])
     
        #만약 '찬성' 투표를 이미 한 경우 : '찬성' 투표 취소
        if ((current_user.voted_up_on? @note) == true)
            @note.unliked_by current_user
            redirect_to(request.referrer, :notice => '해당 글의 추천을 취소하셨습니다.')
        else
            @note.upvote_by current_user
            redirect_to(request.referrer, :notice => '해당 글을 추천하셨습니다.')
        end
    end
 
    # 투표 관련 Controller 내용 : 반대
    def downvote
        @note = Note.find(params[:id])
          
        #만약 '반대' 투표를 이미 한 경우 : '반대' 투표 취소
        if ((current_user.voted_down_on? @note) == true)
            @note.unliked_by current_user    
            redirect_to(request.referrer, :notice => '해당 글의 반대를 취소하셨습니다.')
        else
            @note.downvote_from current_user
            redirect_to(request.referrer, :notice => '해당 글을 반대하셨습니다.')
        end
    end
    
    
    
    def create
        n = Note.new
        n.title = params[:input_title]
        n.content1 = params[:input_content1]
        n.content2 = params[:input_content2]
        n.content3 = params[:input_content3]
        n.mainCategory = params[:input_mainCategory]
        n.user = current_user
        
        
        c = Club.new
        c.title = params[:club_title]
        c.subtitle = params[:club_subtitle]
        c.field = params[:input_field]
        c.official = params[:input_official]
        c.room = params[:input_room]
        c.size = params[:input_size]
        c.always_apply = params[:always_apply]
        c.recruit_start = params[:recruit_start]
        c.recruit_end = params[:recruit_end]
        c.question1 = params[:input_question1]
        c.question2 = params[:input_question2]
        c.question3 = params[:input_question3]
        c.question4 = params[:input_question4]
        c.question5 = params[:input_question5]
        c.question6 = params[:input_question6]
        c.question7 = params[:input_question7]
        c.question8 = params[:input_question8]
        c.question9 = params[:input_question9]
        c.question10 = params[:input_question10]
        c.image = params[:image]
        
        c.note = n
        c.save
        n.save
        
        
        
        redirect_to "/#{params[:input_mainCategory]}"
        # binding.pry
    end
    
    
    def show_study
        @note = Note.find(params[:id])
    end
    
    def show_club
        @note = Note.find(params[:id])
        impressionist(@note)
    end
    
    def destroy
        @note = Note.find(params[:id])
        @note.destroy
            
        redirect_to "/#{@note.mainCategory}"
    end
    
    def edit_club
        @note = Note.find(params[:id])
    end
    
    def edit_study
        @note = Note.find(params[:id])
    end
    
    def update
        note = Note.find(params[:id])
        note.title = params[:input_title]
        note.content = params[:input_content]
        note.save
        
        redirect_to "/#{note.mainCategory}/#{note.id}"
    end
end

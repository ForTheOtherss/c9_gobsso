class Note < ActiveRecord::Base
    has_many :comments, :dependent => :destroy
    paginates_per 10
    belongs_to :user
end

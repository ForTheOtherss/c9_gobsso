class Club < ActiveRecord::Base
    belongs_to :note
    has_many :applies
end

class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      # 분야
      t.integer :field
      
      # 동아리 유형
      t.integer :official
      
      # 동아리방 유무
      t.integer :room
      
      # 동아리 규모
      t.integer :size
      t.belongs_to :note, foreign_key: true
      
      t.timestamps null: false
    end
  end
end

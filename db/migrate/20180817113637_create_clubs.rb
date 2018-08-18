class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.text :title
      t.text :subtitle
      
      t.integer :field
      t.integer :official
      t.integer :room
      t.integer :size
      t.datetime :recruit_start
      t.datetime :recruit_end
      t.belongs_to :note, foreign_key: true
      
      t.timestamps null: false
    end
  end
end

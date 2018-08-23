class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.text :title
      t.text :subtitle
      
      t.string :field
      t.string :official
      t.integer :room
      t.integer :size
      t.string :always_apply
      t.datetime :recruit_start
      t.datetime :recruit_end
      
      t.text :question1
      t.text :question2
      t.text :question3
      t.text :question4
      t.text :question5
      t.text :question6
      t.text :question7
      t.text :question8
      t.text :question9
      t.text :question10
      
      t.belongs_to :note, foreign_key: true
      
      t.timestamps null: false
    end
  end
end

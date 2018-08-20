class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|
      t.string :contact
      t.text :answer1
      t.text :answer2
      t.text :answer3
      t.text :answer4
      t.text :answer5
      t.text :answer6
      t.text :answer7
      t.text :answer8
      t.text :answer9
      t.text :answer10
      t.belongs_to :club
      t.timestamps null: false
    end
  end
end

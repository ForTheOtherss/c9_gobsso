class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :student_number
      t.string :major
      t.string :school
      t.date :birthday
      
      t.belongs_to :user, foreign_key: true
      
      t.timestamps null: false
    end
  end
end

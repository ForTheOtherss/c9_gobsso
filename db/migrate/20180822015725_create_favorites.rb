class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :note, foreign_key: true
      t.timestamps null: false
    end
  end
end

class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      
      t.text :content1
      t.text :content2
      t.text :content3
      t.string :mainCategory
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end

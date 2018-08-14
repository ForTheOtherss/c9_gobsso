class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string :subtitle
      t.text :qualification
      t.text :content
      t.string :mainCategory
      t.string :check1
      t.string :check2
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end

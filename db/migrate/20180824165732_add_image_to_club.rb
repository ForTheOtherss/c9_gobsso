class AddImageToClub < ActiveRecord::Migration
  def change
    add_column :clubs, :image, :string
  end
end

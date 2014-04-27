class AddDescriptionFieldsToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :eye_color, :string
    add_column :characters, :hair_color, :string
    add_column :characters, :height, :integer
    add_column :characters, :weight, :integer
    add_column :characters, :description, :text
  end
end

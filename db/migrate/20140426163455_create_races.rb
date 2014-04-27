class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.integer :str_adjust
      t.integer :dex_adjust
      t.integer :con_adjust
      t.integer :int_adjust
      t.integer :wis_adjust
      t.integer :chr_adjust
      t.text :description

      t.timestamps
    end
  end
end

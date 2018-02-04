class CreateSubWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_weapons do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

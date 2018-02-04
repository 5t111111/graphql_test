class AddSubWeaponRefToWeapon < ActiveRecord::Migration[5.1]
  def change
    add_reference :weapons, :sub_weapon, index: true
  end
end

class AddProvinceToDrops < ActiveRecord::Migration[7.0]
  def change
    add_column :drops , :province , :string
  end
end

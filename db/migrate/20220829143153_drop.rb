class Drop < ActiveRecord::Migration[7.0]
  def change
    # add_column :drops , :reward_type , :string , default: "Dollar"
    # add_column :drops , :reward_amount , :float , default: 0.0
    # add_column :drops , :is_active , :boolean , default: false
    # add_column :drops , :longitude , :float
    # add_column :drops , :latitude , :float
    # add_column :drops , :time_to_active , :datetime
    add_column :drops , :city , :string
    add_column :drops , :country , :string
  end
end

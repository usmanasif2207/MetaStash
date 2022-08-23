class CreatePolls < ActiveRecord::Migration[7.0]
  def change
    create_table :polls do |t|
      t.integer :votes
      t.references :ngo_id_1, foreign_key: { to_table: 'ngos' }
      t.references :ngo_id_2, foreign_key: { to_table: 'ngos' }
      t.references :ngo_id_3, foreign_key: { to_table: 'ngos' }
      t.references :ngo_id_4, foreign_key: { to_table: 'ngos' }
      t.timestamps
    end
  end
end

class CreateNgos < ActiveRecord::Migration[7.0]
  def change
    create_table :ngos do |t|
      t.string :name

      t.timestamps
    end
  end
end

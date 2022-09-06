class M1 < ActiveRecord::Migration[7.0]
  def change
    add_column :feedbacks, :is_resolved,:boolean , default: false
  end
end

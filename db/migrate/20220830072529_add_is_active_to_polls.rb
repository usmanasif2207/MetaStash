class AddIsActiveToPolls < ActiveRecord::Migration[7.0]
  def change
    add_column :polls, :is_active, :boolean, :default=>true
  end
end

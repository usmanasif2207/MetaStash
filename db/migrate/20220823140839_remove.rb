class Remove < ActiveRecord::Migration[7.0]
  def change
    remove_column :polls, :votes
    add_column :polls, :ngo_1_votes, :integer, default: 0
    add_column :polls, :ngo_2_votes, :integer, default: 0
    add_column :polls, :ngo_3_votes, :integer, default: 0
    add_column :polls, :ngo_4_votes, :integer, default: 0
  end
end

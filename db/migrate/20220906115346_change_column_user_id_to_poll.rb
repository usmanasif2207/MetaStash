class ChangeColumnUserIdToPoll < ActiveRecord::Migration[7.0]
  def up
    change_column :polls, :user_id, :bigint, null:true
  end
end




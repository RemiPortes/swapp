class AddUserItemIdToUser < ActiveRecord::Migration
  def change
  	add_column :likes, :user_item_id, :integer
  end
end

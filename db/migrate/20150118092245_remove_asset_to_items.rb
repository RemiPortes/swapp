class RemoveAssetToItems < ActiveRecord::Migration
  def change
    remove_column :items, :asset_file_name, :string
    remove_column :items, :asset_content_type, :string
    remove_column :items, :asset_file_size, :integer
    remove_column :items, :asset_updated_at, :datetime
  end
end

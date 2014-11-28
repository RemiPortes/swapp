class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :first_item_id
      t.integer :second_item_id

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :firstname
      t.string :mail
      t.string :picture

      t.timestamps
    end
  end
end

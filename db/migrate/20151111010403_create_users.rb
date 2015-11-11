class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userName, null: false
      t.string :firstName, null: false
      t.string :lastName, null: false
      t.string :passwordDigest, null: false

      t.timestamps null: false
    end
  end
end

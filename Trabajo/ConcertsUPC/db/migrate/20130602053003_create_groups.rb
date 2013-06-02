class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group
      t.references :user
      t.string :list
      t.string :style

      t.timestamps
    end
    add_index :groups, :user_id
  end
end

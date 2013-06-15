class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.text :message
      t.string :url
      t.integer :group_id

      t.timestamps
    end
  end
end

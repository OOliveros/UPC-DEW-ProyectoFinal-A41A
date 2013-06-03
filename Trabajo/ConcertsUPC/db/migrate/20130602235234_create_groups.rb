class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :genm
      t.string :name

      t.timestamps
    end
  end
end

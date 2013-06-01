class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.string :address
      t.string :district
      t.string :url
      t.string :phone

      t.timestamps
    end
  end
end

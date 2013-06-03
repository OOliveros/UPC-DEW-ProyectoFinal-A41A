class CreateRegisterGroups < ActiveRecord::Migration
  def change
    create_table :register_groups do |t|
      t.string :musical_group
      t.string :member
      t.string :lista
      t.string :estilo

      t.timestamps
    end
  end
end

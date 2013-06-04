class DropRegisterGroupsTable < ActiveRecord::Migration
   def up
    drop_table :register_groups
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

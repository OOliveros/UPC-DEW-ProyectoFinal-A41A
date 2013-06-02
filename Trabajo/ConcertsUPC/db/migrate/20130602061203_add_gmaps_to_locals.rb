class AddGmapsToLocals < ActiveRecord::Migration
  def change
    add_column :locals, :gmaps, :boolean
  end
end

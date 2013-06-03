class RemoveAddressUrlToLocals < ActiveRecord::Migration
  def up
    remove_column :locals, :address_url
  end

  def down
    add_column :locals, :address_url, :string
  end
end

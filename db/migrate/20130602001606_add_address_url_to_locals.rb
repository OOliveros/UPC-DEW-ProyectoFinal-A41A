class AddAddressUrlToLocals < ActiveRecord::Migration
  def change
    add_column :locals, :address_url, :string
  end
end

class AddPhoneToLocals < ActiveRecord::Migration
  def change
    add_column :locals, :phone, :string
  end
end

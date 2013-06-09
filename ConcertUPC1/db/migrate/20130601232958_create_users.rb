class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username,         :null => false  # if you use another field as a username, for example email, you can safely remove this field.
      t.integer :typeuser
      t.string :name
      t.string :lastname
      t.string :secondlastname
      t.string :sex
      t.integer :typedocument
      t.string :document
      t.string :email
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.timestamps
    end
  end
end

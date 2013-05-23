class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :typeuser
      t.string :name
      t.string :lastname
      t.string :secondlastname
      t.string :sex
      t.integer :typedocument
      t.string :document
      t.string :email
      t.string :password
      t.date :dateregister

      t.timestamps
    end
  end
end

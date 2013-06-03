class CreateUserConcerts < ActiveRecord::Migration
  def change
    create_table :user_concerts do |t|
      t.integer :user_id
      t.integer :concert_id

      t.timestamps
    end
  end
end

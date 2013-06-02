class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.references :local
      t.references :group
      t.date :dateconcert
      t.time :hourstart
      t.time :hourend

      t.timestamps
    end
  end
end

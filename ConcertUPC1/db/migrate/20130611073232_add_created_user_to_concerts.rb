class AddCreatedUserToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :created_user, :integer
  end
end

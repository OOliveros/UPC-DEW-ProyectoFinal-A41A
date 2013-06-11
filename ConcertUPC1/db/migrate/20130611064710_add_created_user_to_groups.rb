class AddCreatedUserToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :created_user, :integer
  end
end

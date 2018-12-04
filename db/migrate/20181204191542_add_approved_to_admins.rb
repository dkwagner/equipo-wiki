class AddApprovedToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :approved, :boolean, :default => false
  end
end

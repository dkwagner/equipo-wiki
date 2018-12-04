class AddVerifiedToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :verified, :boolean, default: 0
  end
end

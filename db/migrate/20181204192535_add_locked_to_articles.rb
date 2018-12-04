class AddLockedToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :locked, :boolean, :default => false
  end
end

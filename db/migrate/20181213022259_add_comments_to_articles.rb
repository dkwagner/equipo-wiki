class AddCommentsToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :comment, :string
  end
end

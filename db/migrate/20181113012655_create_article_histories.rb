class CreateArticleHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :article_histories do |t|
      t.index :article_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.belongs_to :user
      t.string :title
      t.text :content
      t.string :link
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.references :topic, foreign_key: true
      t.string :title
      t.text :important
      t.text :use
      t.text :content
      t.string :web

      t.timestamps
    end
  end
end

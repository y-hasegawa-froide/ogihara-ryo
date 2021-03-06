class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.integer :category_id, index: true, foreign_key: true
      t.boolean :draft, default: true, null: false

      t.timestamps null: false
    end
  end
end

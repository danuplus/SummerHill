class CreatePostCategories < ActiveRecord::Migration
  def change
    create_table :post_categories do |t|
      t.string :name
      t.references :post_group, index: true

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :post_category, index: true
      t.references :user, index: true
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end

class CreatePostGroups < ActiveRecord::Migration
  def change
    create_table :post_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end

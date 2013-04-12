class CreateCoursePromotions < ActiveRecord::Migration
  def change
    create_table :course_promotions do |t|
      t.string :title
      t.string :content
      t.string :price
      t.string :color
      t.string :url
      t.integer :order
      t.boolean :active
      t.references :course

      t.timestamps
    end
    add_index :course_promotions, :course_id
  end
end

class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.string :duration
      t.text :content
      t.integer :credits
      t.boolean :promoted
      t.string :color
      t.string :url
      t.string :price
      t.string :kind

      t.timestamps
    end
  end
end

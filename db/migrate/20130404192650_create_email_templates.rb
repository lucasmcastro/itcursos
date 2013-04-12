class CreateEmailTemplates < ActiveRecord::Migration
  def change
    create_table :email_templates do |t|
      t.references :course
      t.string :price
      t.string :title
      t.string :topics
      t.text :highlight
      t.text :content

      t.timestamps
    end
    add_index :email_templates, :course_id
  end
end

class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :decription
      t.string :course_type

      t.timestamps null: false
    end
  end
end

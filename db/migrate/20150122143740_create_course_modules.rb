class CreateCourseModules < ActiveRecord::Migration
  def change
    create_table :course_modules do |t|
      t.references :course
      t.string :name
      t.string :period

      t.timestamps null: false
    end
    add_index :course_modules, :course_id
  end
end

class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :year
      t.string :name
      t.string :code
      t.integer :credits
      t.string :period

      t.timestamps null: false
    end
    add_index :courses, :year_id
  end
end

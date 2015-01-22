class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.date :year
      t.string :code
      t.integer :credits
      t.string :period

      t.timestamps null: false
    end
  end
end

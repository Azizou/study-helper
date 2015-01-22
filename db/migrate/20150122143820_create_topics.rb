class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.references :course_module
      t.string :name

      t.timestamps null: false
    end
    add_index :topics, :course_module_id
  end
end

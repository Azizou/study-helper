class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :topic
      t.string :name
      t.string :level

      t.timestamps null: false
    end
    add_index :questions, :topic_id
  end
end

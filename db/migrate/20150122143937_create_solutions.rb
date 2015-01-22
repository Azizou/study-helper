class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.references :question
      t.string :name

      t.timestamps null: false
    end
    add_index :solutions, :question_id
  end
end

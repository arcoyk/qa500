class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :answer_id

      t.timestamps null: false
    end
  end
end

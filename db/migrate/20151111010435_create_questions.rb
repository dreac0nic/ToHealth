class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :questionText, null: false

      t.timestamps null: false
    end
  end
end

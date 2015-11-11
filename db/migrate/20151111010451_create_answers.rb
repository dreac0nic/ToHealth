class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :numAnswer
      t.string :openAnswer
      t.references :user_id
      t.references :question_id

      t.timestamps null: false
    end
  end
end

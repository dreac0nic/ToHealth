class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :sleepAnswer
      t.integer :mealsAnswer
      t.integer :fruitAndVegAnswer
      t.integer :stressAnswer
      t.integer :bibleAnswer
      t.integer :prayerAnswer
      t.integer :exerciseAnswer
      t.integer :goalsAnswer
      t.references :user_id
      t.references :question_id

      t.timestamps null: false
    end
  end
end


Questions.create(questionText: "How many hours did you sleep last night?")
Questions.create(questionText: "Did you eat 3 meals today?")
Questions.create(questionText: "Did you eat your fruits and vegetables?")
#Questions.create(questionText: "How do you deal with stress?")
Questions.create(questionText: "How stressed are you right now?")
Questions.create(questionText: "Have you read your Bible today?")
Questions.create(questionText: "Have you prayed today?")
Questions.create(questionText: "Have you exercised recently?")
Questions.create(questionText: "Are you accomplishing your goals?")
class CreateAnswerChoices < ActiveRecord::Migration
  def change
    create_table :answer_choices do |t|
      t.integer :question_id, index: true, unique: true
      t.string :answers
      t.timestamps
    end
  end
end

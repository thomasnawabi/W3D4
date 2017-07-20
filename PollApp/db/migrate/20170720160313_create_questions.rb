class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :poll_id, index: true, unique: true
      t.string :q_title
      t.timestamps 
    end
  end
end

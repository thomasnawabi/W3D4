class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :responder_id, index: true, unique: true
      t.integer :answers_id
      t.timestamps
    end
  end
end

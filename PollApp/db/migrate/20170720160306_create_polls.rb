class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.integer :author_id, index: true, unique: true
      t.string :title
      t.timestamps
    end
  end
end

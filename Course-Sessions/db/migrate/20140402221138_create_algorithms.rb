class CreateAlgorithms < ActiveRecord::Migration
  def change
    create_table :algorithms do |t|
      t.string :question
      t.integer :trait

      t.timestamps
    end
  end
end

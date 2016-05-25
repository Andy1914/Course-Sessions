class CreatePersonalities < ActiveRecord::Migration
  def change
    create_table :personalities do |t|
      t.integer :doers
      t.integer :thinkers
      t.integer :creators
      t.integer :helpers
      t.integer :persuaders
      t.integer :organizers

      t.timestamps
    end
  end
end

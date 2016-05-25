class CreateHhcodes < ActiveRecord::Migration
  def change
    create_table :hhcodes do |t|
      t.integer :doers
      t.integer :persuaders
      t.integer :helpers
      t.integer :creators
      t.integer :thinkers
      t.integer :organizers

      t.timestamps
    end
  end
end

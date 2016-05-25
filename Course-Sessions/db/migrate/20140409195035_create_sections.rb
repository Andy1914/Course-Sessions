class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end

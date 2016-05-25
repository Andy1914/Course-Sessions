class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :education_level
      t.string :job

      t.timestamps
    end
  end
end

class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :institution
      t.text :instructor
      t.text :description
      t.string :section
      t.text :url

      t.timestamps
    end
  end
end

class AddColumnToSections < ActiveRecord::Migration
  def change
  	add_column :sections,:personality_types,:string
  end
end

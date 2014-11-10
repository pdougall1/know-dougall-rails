class AddFormattedEntryToAnnotations < ActiveRecord::Migration
  def change
    add_column :annotations, :formatted_entry, :text
    rename_column :annotations, :body, :entry
  end
end

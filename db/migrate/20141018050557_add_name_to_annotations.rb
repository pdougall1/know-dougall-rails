class AddNameToAnnotations < ActiveRecord::Migration
  def change
    add_column :annotations, :name, :string
  end
end

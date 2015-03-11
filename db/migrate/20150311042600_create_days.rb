class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :repository_id
      t.integer :count

      t.timestamps
    end
  end
end

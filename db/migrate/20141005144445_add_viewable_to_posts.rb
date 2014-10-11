class AddViewableToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :viewable, :boolean
  end
end

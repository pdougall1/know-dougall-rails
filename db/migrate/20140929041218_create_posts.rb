class CreatePosts < ActiveRecord::Migration
  def change

	drop_table :posts	  	

    create_table :posts do |t|
      t.text :entry
      t.text :formatted_entry
      t.string :topic
      t.string :title
      t.timestamps
    end
  end
end

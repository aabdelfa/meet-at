class CreatePages < ActiveRecord::Migration
  def up
   		create_table :pages do |t|

   			t.string "name", :limit => 25 
   			t.integer "position", :limit => 11 
   			t.integer "subject_id", :limit => 11 
   			t.integer "permalink", :limit => 11 
   			t.boolean "visible", :default => false
      		t.timestamps null: false


  		end
  		add_index("pages","subject_id", :unique => false)
  		add_index("pages","permalink", :unique => false)
   	end

   	def down
   		drop_table :pages
   	end
end

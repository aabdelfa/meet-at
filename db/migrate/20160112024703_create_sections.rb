class CreateSections < ActiveRecord::Migration
  def up
   		create_table :sections do |t|

   			t.string "name", :limit => 25 
   			t.integer "position", :limit => 11 
   			t.integer "subject_id", :limit => 11 
   			t.integer "page_id", :limit => 11 
   			t.boolean "visible", :default => false
   			t.string "content_type", :limit => 256
   			t.text "content"  
      		t.timestamps null: false

  		end
      		add_index("sections","page_id", :unique => false)
   	end

   	def down
   		drop_table :sections
   	end
end

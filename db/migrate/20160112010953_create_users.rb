class CreateUsers < ActiveRecord::Migration
#  def change
#   create_table :users do |t|
#
#      t.timestamps null: false
#    end
#  end
   def up
   		create_table :users do |t|
   			#t.column "name", :type, options
   			#faster way shown in line 12 below
   			t.string "first_name" , :limit => 25
   			t.string "last_name" , :limit => 50
   			t.string "email" , :default => "", null: false 
   			t.string "password" , :limit => 40

   			#2 columns below are automatically created by t.timestamps
   			#t.datetime "created_at"
   			#t.datetime "updated_at"
      		t.timestamps null: false
  		end
   	end

   	def down
   		drop_table :users
   	end
end

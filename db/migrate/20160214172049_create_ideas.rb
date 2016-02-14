class CreateIdeas < ActiveRecord::Migration
  def change
  	create_table :ideas do |t|
  		t.string :date
  		t.string :activity
  		t.string :place
  		t.string :cost
  		t.timestamps
  	end 
  end
end

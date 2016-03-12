class InitialDatabaseSetup < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :floor
      t.string :seating_area
      t.string :technology
      t.string :activity
      
      t.timestamps 
    end
  end
end

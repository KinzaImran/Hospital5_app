class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :p_number
      t.string :p_name
      t.integer :p_age

      t.timestamps null: false
    end
  end
end

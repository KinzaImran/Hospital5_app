class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.integer :d_number
      t.string :d_name
      t.string :d_qualification

      t.timestamps null: false
    end
  end
end

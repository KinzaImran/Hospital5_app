class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.integer :m_no
      t.date :manufacturing_date
      t.date :expiry_date

      t.timestamps null: false
    end
  end
end

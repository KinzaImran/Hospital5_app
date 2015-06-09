class CreateTreats < ActiveRecord::Migration
  def change
    create_table :treats do |t|
      t.date :t_date
      t.references :patient, index: true
      t.references :doctor, index: true

      t.timestamps null: false
    end
    add_foreign_key :treats, :patients
    add_foreign_key :treats, :doctors
  end
end

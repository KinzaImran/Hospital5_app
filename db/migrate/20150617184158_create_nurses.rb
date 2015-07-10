class CreateNurses < ActiveRecord::Migration
  def change
    create_table :nurses do |t|
      t.integer :n_no
      t.string :name
      t.integer :duty_hours

      t.timestamps null: false
    end
  end
end

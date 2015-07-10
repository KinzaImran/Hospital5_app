class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :rno
      t.string :rtype

      t.timestamps null: false
    end
  end
end

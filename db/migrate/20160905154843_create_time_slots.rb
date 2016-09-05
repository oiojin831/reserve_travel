class CreateTimeSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :time_slots do |t|
      t.integer :total
      t.integer :reserved
      t.integer :empty
      t.integer :other

      t.timestamps
    end
  end
end

class CreateStaffServices < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_services do |t|
      t.integer :service_id
      t.integer :staff_id

      t.timestamps
    end
  end
end

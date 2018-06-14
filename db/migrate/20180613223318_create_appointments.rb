class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :therapist_id
      t.integer :client_id

      t.timestamps
    end
  end
end

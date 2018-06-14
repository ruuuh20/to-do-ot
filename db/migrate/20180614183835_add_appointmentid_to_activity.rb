class AddAppointmentidToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :appointment_id, :integer
  end
end

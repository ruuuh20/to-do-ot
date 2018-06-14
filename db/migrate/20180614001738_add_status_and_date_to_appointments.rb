class AddStatusAndDateToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :date, :datetime
    add_column :appointments, :status, :string

  end
end

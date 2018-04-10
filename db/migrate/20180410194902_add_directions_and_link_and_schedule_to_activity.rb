class AddDirectionsAndLinkAndScheduleToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :directions, :text
    add_column :activities, :schedule, :text
    add_column :activities, :link, :string

  end
end

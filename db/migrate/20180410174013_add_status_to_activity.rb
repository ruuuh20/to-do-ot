class AddStatusToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :status, :boolean, :default => false
  end
end

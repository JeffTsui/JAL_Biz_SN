class ChangePassengerType < ActiveRecord::Migration
  def change
    rename_column :passengers, :type, :travel_type
  end
end

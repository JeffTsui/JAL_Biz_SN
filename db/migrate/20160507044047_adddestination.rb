class Adddestination < ActiveRecord::Migration
  def change
    add_column :passengers, :destination, :string
  end
end

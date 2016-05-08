class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :flight
      t.string :seat
      t.string :name
      t.string :from
      t.string :work
      t.string :hobby
      t.string :type
      t.string :comments
      t.string :avatar
      t.string :fb
      t.string :linkedin
      t.string :source

      t.timestamps null: false
    end
  end
end

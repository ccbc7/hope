class AddXxxToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :room_introduction, :string
    add_column :reservations, :start_date, :datetime
    add_column :reservations, :end_date, :datetime
    add_column :reservations, :address, :integer
    add_column :reservations, :img, :string
    add_column :reservations, :charge, :integer
  end
end

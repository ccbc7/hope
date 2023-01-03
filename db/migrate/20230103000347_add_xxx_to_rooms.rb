class AddXxxToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :room_introduction, :string
    add_column :rooms, :start_date, :datetime
    add_column :rooms, :end_date, :datetime
    add_column :rooms, :address, :string
    add_column :rooms, :img, :string
  end
end

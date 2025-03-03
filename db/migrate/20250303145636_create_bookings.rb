class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :palace, null: false, foreign_key: true
      t.float :price
      t.string :begin_date
      t.string :end_date
      t.boolean :status

      t.timestamps
    end
  end
end

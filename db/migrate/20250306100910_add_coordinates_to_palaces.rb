class AddCoordinatesToPalaces < ActiveRecord::Migration[7.1]
  def change
    add_column :palaces, :latitude, :float
    add_column :palaces, :longitude, :float
  end
end

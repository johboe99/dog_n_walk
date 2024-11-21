class AddCoordinatesToDogs < ActiveRecord::Migration[7.1]
  def change
    add_column :dogs, :latitude, :float
    add_column :dogs, :longtitude, :float
  end
end

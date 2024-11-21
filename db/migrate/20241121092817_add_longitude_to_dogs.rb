class AddLongitudeToDogs < ActiveRecord::Migration[7.1]
  def change
    remove_column :dogs, :longtitude
    add_column :dogs, :longitude, :float
  end
end

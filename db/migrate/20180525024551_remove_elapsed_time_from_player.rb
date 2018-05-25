class RemoveElapsedTimeFromPlayer < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :elapsed_time, :string
  end
end

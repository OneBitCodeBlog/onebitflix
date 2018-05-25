class AddElapsedTimeToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :elapsed_time, :decimal
  end
end

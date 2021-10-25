class DropPuts < ActiveRecord::Migration[5.2]
  def change
    drop_table :puts
  end
end

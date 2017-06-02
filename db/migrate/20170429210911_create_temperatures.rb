class CreateTemperatures < ActiveRecord::Migration[5.0]
  def change
    create_table :temperatures do |t|
      t.float :dateTemperature
      t.references :node, foreign_key: true

      t.timestamps
    end
  end
end

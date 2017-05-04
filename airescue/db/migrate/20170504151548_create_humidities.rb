class CreateHumidities < ActiveRecord::Migration[5.0]
  def change
    create_table :humidities do |t|
      t.float :dataHumidity
      t.references :node, foreign_key: true

      t.timestamps
    end
  end
end

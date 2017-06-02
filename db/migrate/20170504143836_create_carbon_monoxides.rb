class CreateCarbonMonoxides < ActiveRecord::Migration[5.0]
  def change
    create_table :carbon_monoxides do |t|
      t.float :dataMonoxide
      t.references :node, foreign_key: true

      t.timestamps
    end
  end
end

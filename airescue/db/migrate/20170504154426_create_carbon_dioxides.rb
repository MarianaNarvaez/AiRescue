class CreateCarbonDioxides < ActiveRecord::Migration[5.0]
  def change
    create_table :carbon_dioxides do |t|
      t.float :dataDioxide
      t.references :node, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCarbons < ActiveRecord::Migration[5.0]
  def change
    create_table :carbons do |t|
      t.float :dataCarbon
      t.references :node, foreign_key: true

      t.timestamps
    end
  end
end

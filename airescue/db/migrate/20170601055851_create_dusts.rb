class CreateDusts < ActiveRecord::Migration[5.0]
  def change
    create_table :dusts do |t|
      t.float :dataDust
      t.references :node, foreign_key: true

      t.timestamps
    end
  end
end

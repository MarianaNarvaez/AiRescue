class CreateNitrogens < ActiveRecord::Migration[5.0]
  def change
    create_table :nitrogens do |t|
      t.float :dataNitrogen
      t.references :node, foreign_key: true

      t.timestamps
    end
  end
end

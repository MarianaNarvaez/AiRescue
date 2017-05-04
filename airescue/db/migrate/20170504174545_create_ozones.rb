class CreateOzones < ActiveRecord::Migration[5.0]
  def change
    create_table :ozones do |t|
      t.float :dataOzone
      t.references :node, foreign_key: true

      t.timestamps
    end
  end
end

class AddCoverToNodes < ActiveRecord::Migration[5.0]
  def change
    add_attachment :nodes,:cover
  end
end

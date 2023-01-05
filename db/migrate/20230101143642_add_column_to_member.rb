class AddColumnToMember < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :jihanki, :string
    add_column :members, :daikyousitu, :string
  end
end

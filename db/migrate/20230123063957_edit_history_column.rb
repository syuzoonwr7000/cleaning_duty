class EditHistoryColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :histories, :date,:date, unique: true
  end
end

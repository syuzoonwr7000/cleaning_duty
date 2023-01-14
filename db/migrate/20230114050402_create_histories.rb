class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.string :room202
      t.string :soto1
      t.string :soto2
      t.date :date

      t.timestamps
    end
  end
end

class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :member
      t.date :date

      t.timestamps
    end
  end
end

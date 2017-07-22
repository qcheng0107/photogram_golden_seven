class CreateHomeworks < ActiveRecord::Migration[5.1]
  def change
    create_table :homeworks do |t|
      t.time :deadline
      t.string :assignment
      t.text :requirement

      t.timestamps
    end
  end
end

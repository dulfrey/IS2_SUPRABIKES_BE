class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.string :type
      t.float :total

      t.timestamps
    end
  end
end

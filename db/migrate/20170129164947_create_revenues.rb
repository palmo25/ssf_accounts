class CreateRevenues < ActiveRecord::Migration[5.0]
  def change
    create_table :revenues do |t|
      t.string :description
      t.decimal :amount
      t.string :type

      t.timestamps
    end
  end
end

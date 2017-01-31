class AddDateToRevenue < ActiveRecord::Migration[5.0]
  def change
    add_column :revenues, :date, :date
  end
end

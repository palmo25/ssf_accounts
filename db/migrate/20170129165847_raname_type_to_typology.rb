class RanameTypeToTypology < ActiveRecord::Migration[5.0]
  def change
    rename_column :revenues, :type, :typology
  end
end

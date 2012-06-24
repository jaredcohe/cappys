class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :specials, :type, :special_type
  end

  def down
  end
end

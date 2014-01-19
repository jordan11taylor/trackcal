class ChangeDateTimeToDate < ActiveRecord::Migration
  def change
    change_column :trackdays, :date, :date
  end
end

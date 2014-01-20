class AddLinkToTrackdays < ActiveRecord::Migration
  def change
    add_column :trackdays, :link, :string
  end
end

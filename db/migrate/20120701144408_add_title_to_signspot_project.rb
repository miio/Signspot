class AddTitleToSignspotProject < ActiveRecord::Migration
  def change
    add_column :signspot_projects, :title, :text

  end
end

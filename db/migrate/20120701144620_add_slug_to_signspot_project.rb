class AddSlugToSignspotProject < ActiveRecord::Migration
  def change
    add_column :signspot_projects, :slug, :string

  end
end

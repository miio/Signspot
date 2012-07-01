class AddUniqueIndexSlugToSignspotProject < ActiveRecord::Migration
  def change
    add_index 'signspot_projects', :slug, :unique => true, :name => 'slug_unique_index'
  end
end

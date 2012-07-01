class CreateSignspotProjects < ActiveRecord::Migration
  def change
    create_table :signspot_projects do |t|

      t.timestamps
    end
  end
end

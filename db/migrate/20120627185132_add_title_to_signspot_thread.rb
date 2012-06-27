class AddTitleToSignspotThread < ActiveRecord::Migration
  def change
    add_column :signspot_threads, :title, :text

  end
end

class AddStateToSignspotThread < ActiveRecord::Migration
  def change
    add_column :signspot_threads, :state, :tinyint

  end
end

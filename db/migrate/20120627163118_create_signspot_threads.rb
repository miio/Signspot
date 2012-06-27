class CreateSignspotThreads < ActiveRecord::Migration
  def change
    create_table :signspot_threads do |t|

      t.timestamps
    end
  end
end

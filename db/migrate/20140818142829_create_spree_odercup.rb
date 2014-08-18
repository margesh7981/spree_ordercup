class CreateSpreeOdercup < ActiveRecord::Migration
  def self.up
    create_table :spree_ordercups do |t|
      t.boolean "connected", :default => false
      t.string "store_url"
      t.string "api_key"
    end
  end

  def self.down
    drop_table :spree_ordercups
  end
end

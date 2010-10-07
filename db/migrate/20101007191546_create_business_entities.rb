class CreateBusinessEntities < ActiveRecord::Migration
  def self.up
    create_table :business_entities do |t|

      t.integer   :external_id
      t.integer   :business_entity_type_id, :null => :false
      t.string    :name,            :limit => 128, :null => :false
      t.integer   :business_status_id,      :null => :false
      t.integer   :parent_id,               :null => :true
      t.timestamp :ha_transfer_at,    :null => :true
      t.timestamps
    end
  end

  def self.down
    drop_table :business_entities
  end
end

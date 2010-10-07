class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name, :limit => 128,  :null => :false
      t.text :description,            :null => :false
      #t.decimal :commission,          :precision => 8, :scale => 2, :default => 0.0
      t.decimal :retailer_commission_min, :precision => 8, :scale => 2, :default => 0.0
      t.decimal :retailer_commission_max, :precision => 8, :scale => 2, :default => 0.0

      t.string :external_id_1       # Organization_id in idt.idt_items
      t.string :external_id_2       # Inventory_id in idt.idt_items
      
      t.timestamp :ha_transfer_at,    :null => :true
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
class Product < ActiveRecord::Base
  #include PolymorphicCommission
  #if (ENV["RAILS_ENV"] == "production") || (ENV["RAILS_ENV"] == "staging")
    establish_connection "psf_#{Rails.env}"
    set_table_name "BOSS_PRODUCTS"
    set_primary_key "CLASS_ID"
  #end
  
  def id
     self.class_id.to_i
  end

  def id=(value)
     self.class_id = value.to_i
  end
end
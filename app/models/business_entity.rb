class BusinessEntity < ActiveRecord::Base

  #if (Rails.env == "production") || (ENV["RAILS_ENV"] == "staging")
    establish_connection "psf_#{Rails.env}"
  #end
end
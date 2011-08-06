class Country < ActiveRecord::Base
  attr_accessible :code_alpha2, :code_alpha3, :code_numeric, :name
end

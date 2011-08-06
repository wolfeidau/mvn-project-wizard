require 'open-uri'
require 'csv'

Country.delete_all

CSV.foreach("#{Rails.root}/lib/data/countries.csv",
            :quote_char => '"', :col_sep =>',', :row_sep =>:auto, :headers => :first_row) do |row|

  Country.create!(:code_alpha2 => row[0], :code_alpha3 => row[1], :code_numeric => row[2], :name => row[3])

end
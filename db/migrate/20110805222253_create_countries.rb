class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :code_alpha2
      t.string :code_alpha3
      t.integer :code_numeric
      t.string :name

      t.timestamps
    end
  end
end

class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :groupId
      t.string :artifactId
      t.string :version
      t.string :packaging
      t.text :description

      t.timestamps
    end
  end
end

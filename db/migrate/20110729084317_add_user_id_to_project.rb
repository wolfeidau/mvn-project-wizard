class AddUserIdToProject < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.references :user
    end
    #add a foreign key
    execute <<-SQL
      ALTER TABLE projects
        ADD CONSTRAINT fk_projects_users
        FOREIGN KEY (user_id)
        REFERENCES users(id)
    SQL

  end
end

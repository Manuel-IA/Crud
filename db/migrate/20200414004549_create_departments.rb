class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments, id: false do |t|
      t.string :id, null: false
      t.string :name
      t.belongs_to :country

      t.timestamps
    end
    execute "ALTER TABLE departments ADD PRIMARY KEY (id);"
  end
end

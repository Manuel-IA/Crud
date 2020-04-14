class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries, id: false do |t|
      t.string :id, null: false
      t.string :name

      t.timestamps
    end
    execute "ALTER TABLE countries ADD PRIMARY KEY (id);"
  end
end

class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities, id: false do |t|
      t.string :id, null: false
      t.string :name
      t.belongs_to :department

      t.timestamps
    end
    execute "ALTER TABLE cities ADD PRIMARY KEY (id);"
  end
end

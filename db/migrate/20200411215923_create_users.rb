class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :IdentificationType_id
      t.string :name
      t.date :birthdate
      t.string :Gender_id
      t.string :Country_id
      t.string :Department_id
      t.string :City_id

      t.timestamps
    end
  end
end

class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.belongs_to :identificationType
      t.integer :identification
      t.string :name
      t.string :birthdate
      t.belongs_to :gender
      t.belongs_to :country
      t.belongs_to :department
      t.belongs_to :city

      t.timestamps
    end
  end
end

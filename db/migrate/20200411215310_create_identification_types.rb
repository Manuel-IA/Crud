class CreateIdentificationTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :identification_types do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end

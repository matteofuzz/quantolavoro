class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :partita_iva
      t.string :codice_fiscale
      t.string :address
      t.string :tel
      t.string :mobtel
      t.string :email

      t.timestamps
    end
  end
end

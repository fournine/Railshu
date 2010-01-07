class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :ragione_sociale
      t.string :nome
      t.string :cognome
      t.string :p_iva
      t.string :cod_fisc
      t.string :indirizzo
      t.string :comune
      t.string :cap

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end

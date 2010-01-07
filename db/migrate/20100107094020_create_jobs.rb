class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.text :descrizione
      t.integer :qty
      t.integer :tipo_iva_id
      t.integer :invoice_id
      t.float :importo

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end

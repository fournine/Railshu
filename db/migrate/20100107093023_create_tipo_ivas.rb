class CreateTipoIvas < ActiveRecord::Migration
  def self.up
    create_table :tipo_ivas do |t|
      t.integer :aliquota
      t.string :descrizione

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_ivas
  end
end

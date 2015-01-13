class CreateImportOneAsses < ActiveRecord::Migration
  def change
    create_table :import_one_asses do |t|
      t.text :import_xml
      t.text :offers_xml

      t.timestamps
    end
  end
end

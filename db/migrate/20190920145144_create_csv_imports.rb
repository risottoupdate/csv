class CreateCsvImports < ActiveRecord::Migration[6.0]
  def change
    create_table :csv_imports do |t|
    	t.string :name
    	t.integer :age
    	t.string :address

      t.timestamps
    end
  end
end

class CreateCellPhones < ActiveRecord::Migration[5.0]
  def change
    create_table :cell_phones do |t|
      t.string :model
      t.string :version

      t.timestamps
    end
  end
end

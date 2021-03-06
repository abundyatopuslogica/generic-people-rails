class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.references :label, index: true
      t.string :number
      t.references :carrier, index: true
      t.boolean :confirmed, default: false

      t.timestamps
    end
  end
end

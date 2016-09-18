class CreateUglyterms < ActiveRecord::Migration
  def change
    create_table :uglyterms do |t|
      t.string :term

      t.timestamps null: false
    end
  end
end

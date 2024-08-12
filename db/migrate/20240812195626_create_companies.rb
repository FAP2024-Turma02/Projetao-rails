class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :industry
      t.integer :founded

      t.timestamps
    end
  end
end

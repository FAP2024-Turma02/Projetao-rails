class CreateModules < ActiveRecord::Migration[7.1]
  def change
    create_table :modules do |t|
      t.string :name

      t.timestamps
    end
  end
end

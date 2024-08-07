class TurnColummDocumentUniqueInTableUsers < ActiveRecord::Migration[7.1]
  def change
    def change
      add_index :users, :document, unique: true
    end
  end
end

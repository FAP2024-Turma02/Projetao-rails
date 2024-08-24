class AddNotNullConstraintToAlunosName < ActiveRecord::Migration[7.1]
  def change
    change_column :alunos, :name, :string, null: false
  end
end


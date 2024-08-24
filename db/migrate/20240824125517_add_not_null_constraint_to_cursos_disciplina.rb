class AddNotNullConstraintToCursosDisciplina < ActiveRecord::Migration[7.1]
  def change
    change_column :cursos, :disciplina, :string, null: false
  end
end

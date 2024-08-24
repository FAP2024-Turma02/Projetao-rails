class UpdateEnrollmentsIndexAndValidade < ActiveRecord::Migration[7.1]
  def change
    # Adicionando o índice único
    add_index :enrollments, [:aluno_id, :curso_id], unique: true

    # Modificando o campo validade para não aceitar nulos
    change_column :enrollments, :validade, :date, null: false
  end
end


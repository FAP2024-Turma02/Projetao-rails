class CreateCursos < ActiveRecord::Migration[7.1]
  def change
    create_table :cursos do |t|
      t.string :disciplina

      t.timestamps
    end
  end
end

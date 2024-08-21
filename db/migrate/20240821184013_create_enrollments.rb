class CreateEnrollments < ActiveRecord::Migration[7.1]
  def change
    create_table :enrollments do |t|
      t.references :aluno, null: false, foreign_key: true
      t.references :curso, null: false, foreign_key: true
      t.date :validade

      t.timestamps
    end
  end
end

class CreateTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :subject
      t.belongs_to :classroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end

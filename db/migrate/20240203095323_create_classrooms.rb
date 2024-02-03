class CreateClassrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :classrooms do |t|
      t.string :section
      t.string :course
      t.belongs_to :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end

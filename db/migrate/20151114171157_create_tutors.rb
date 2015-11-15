class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end

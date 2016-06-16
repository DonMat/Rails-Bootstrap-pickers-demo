class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :description
      t.time :time
      t.date :due_date

      t.timestamps null: false
    end
  end
end

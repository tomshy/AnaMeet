class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :notes
      t.references :user, null: false, foreign_key: true
      t.references :meeting, null: false, foreign_key: true

      t.timestamps
    end
  end
end

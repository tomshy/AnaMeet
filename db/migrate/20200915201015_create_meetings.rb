class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.text :description
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
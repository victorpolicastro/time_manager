class CreateMarks < ActiveRecord::Migration[6.0]
  def change
    create_table :marks do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.timestamp :datetime
      t.string :kind

      t.timestamps
    end
  end
end

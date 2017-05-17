class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :venue
      t.string :description
      t.datetime :event_time
      t.references :user
      t.references :category

      t.timestamps
    end
  end
end

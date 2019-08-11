class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :created_by
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end

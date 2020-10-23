class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.datetime :start_on
      t.datetime :end_on
      t.integer :state

      t.timestamps
    end
  end
end

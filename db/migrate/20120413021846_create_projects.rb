class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :title
      t.text :description
      t.date :date
      t.integer :tag_id

      t.timestamps
    end
  end
end

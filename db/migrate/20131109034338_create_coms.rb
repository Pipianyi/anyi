class CreateComs < ActiveRecord::Migration
  def change
    create_table :coms do |t|
      t.string :last_name
      t.text :content
      t.string :first_name

      t.timestamps
    end
  end
end

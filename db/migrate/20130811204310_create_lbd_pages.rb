class CreateLbdPages < ActiveRecord::Migration
  def change
    create_table :lbd_pages do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

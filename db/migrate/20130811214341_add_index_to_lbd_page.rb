class AddIndexToLbdPage < ActiveRecord::Migration
  def change 
    remove_column :lbd_pages, :company_id, :integer
    change_table :lbd_pages do |t|

      t.integer :company_id
    end
    add_index :lbd_pages, :company_id, unique: true
  end
end

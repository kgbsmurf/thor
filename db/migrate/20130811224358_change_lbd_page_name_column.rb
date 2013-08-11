class ChangeLbdPageNameColumn < ActiveRecord::Migration
  def change
    change_column :lbd_pages, :name, :string, :null => false
  end
end

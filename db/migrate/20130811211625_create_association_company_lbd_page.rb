class CreateAssociationCompanyLbdPage < ActiveRecord::Migration
  def change
    change_table :lbd_pages do |t|
      t.belongs_to :company
    end
  end
end

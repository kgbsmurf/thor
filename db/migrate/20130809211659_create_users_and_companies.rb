class CreateUsersAndCompanies < ActiveRecord::Migration
  def change
    create_table :users_and_companies do |t|
      t.belongs_to :user
      t.belongs_to :company
    end
  end
end

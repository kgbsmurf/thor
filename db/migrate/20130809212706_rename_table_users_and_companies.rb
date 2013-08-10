class RenameTableUsersAndCompanies < ActiveRecord::Migration
  def change
    rename_table :users_and_companies, :companies_users
  end
end

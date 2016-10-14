class AddAffiliationToTrainers < ActiveRecord::Migration
  def change
    add_column :trainers, :affiliation, :string
  end
end

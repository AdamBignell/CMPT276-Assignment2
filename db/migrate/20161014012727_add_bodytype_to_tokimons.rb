class AddBodytypeToTokimons < ActiveRecord::Migration
  def change
    add_column :tokimons, :bodytype, :string
  end
end

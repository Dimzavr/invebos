class AddMissingNullChecks < ActiveRecord::Migration[6.1]
  def change
    change_column_null :franchises, :title, false
  end
end

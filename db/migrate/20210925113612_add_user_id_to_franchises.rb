class AddUserIdToFranchises < ActiveRecord::Migration[6.1]
  def change
    add_reference :franchises, :user, null: false, foreign_key: true, default: User.first.id
  end
end

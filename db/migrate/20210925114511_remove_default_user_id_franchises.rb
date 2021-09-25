class RemoveDefaultUserIdFranchises < ActiveRecord::Migration[6.1]
  def up
    change_column_default :franchises, :user_id, from: User.first.id, to: nil
  end

  def down
    change_column_default :franchises, :user_id, from: nil, to: User.first.id
  end
end

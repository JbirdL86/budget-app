class AddUserRefToGroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :groups, :user, null: false, foreign_key: true
    add_reference :groups, :activity, null: false, foreign_key: true
  end
end

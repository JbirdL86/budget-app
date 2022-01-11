class AddUserRefToActivities < ActiveRecord::Migration[6.1]
  def change
    add_reference :activities, :author, null: false, foreign_key: {to_table: :users}
    add_reference :activities, :group, null: false, foreign_key: true
  end
end

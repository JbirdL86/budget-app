class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end

    change_table :groups do |t|
      add_reference :groups, :user, null: false, foreign_key: true
    end
  end
end

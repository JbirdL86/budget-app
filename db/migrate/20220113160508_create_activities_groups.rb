class CreateActivitiesGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :activities_groups do |t|

      t.timestamps
    end

    change_table :activities do |t|
      add_reference :activities_groups, :group, null: false
      add_reference :activities_groups, :activity, null: false
    end
  end
end

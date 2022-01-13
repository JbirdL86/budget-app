class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.float :amount

      t.timestamps
    end
  
    change_table :activities do |t|
      add_reference :activities, :author, null: false, foreign_key: {to_table: :users}
    end
  end

  
end

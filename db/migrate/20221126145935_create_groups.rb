class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.string :description
      t.boolean :is_private, default: false

      t.timestamps
    end

    create_table :user_groups do |t|
      t.belongs_to :group
      t.belongs_to :user
      t.integer :user_type, default: 0, null: false

      t.timestamps
    end
  end
end

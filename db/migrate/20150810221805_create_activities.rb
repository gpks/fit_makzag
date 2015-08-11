class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :user, index: true
      t.text :description
      t.integer :duration
      t.references :tag, index: true
      t.integer :intensity

      t.timestamps
    end
  end
end

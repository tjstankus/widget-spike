class CreateRegisteredApps < ActiveRecord::Migration
  def change
    create_table :registered_apps do |t|
      t.string :name
      t.text :widget
      t.string :widget_endpoint

      t.timestamps
    end
  end
end

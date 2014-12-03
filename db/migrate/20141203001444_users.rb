class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :emails

      t.timestamps
    end
  end
end

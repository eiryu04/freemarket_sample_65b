class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :card_number,    null: false
      t.integer :year,           null: false
      t.integer :month,          null: false
      t.integer :security_code,  null: false
      t.references :user,        foregin_key: true
      t.timestamps
    end
  end
end

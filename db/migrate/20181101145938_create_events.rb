class CreateEvents < ActiveRecord::Migration[5.2]
  enable_extension 'pgcrypto'
  disable_ddl_transaction!

  def change
    create_table :events do |t|
      t.string   :title,              default: '', null: false
      t.string   :description
      t.datetime :remind_at
      t.integer  :priority,           default: 0
      t.integer  :state,              default: 0
      t.integer  :continue_remind_in, default: 0

      t.timestamps
    end

    add_index :events, :title, unique: true, algorithm: :concurrently
  end
end

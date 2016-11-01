# frozen_string_literal: true
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email

      t.timestamps null: false
    end
    DbTextSearch::CaseInsensitive.add_index connection, :users, :display_name
  end
end

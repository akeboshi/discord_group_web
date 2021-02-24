# frozen_string_literal: true

# 試しに作る
class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name, null: false, default: ''
      t.string :department, null: false, default: ''
      t.integer :gender, null: false, default: 0
      t.date :birth, null: true
      t.date :joined_date, null: true
      t.bigint :payment, null: false, default: ''
      t.text :note, null: false, default: ''

      t.timestamps
    end
  end
end

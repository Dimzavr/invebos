# frozen_string_literal: true

class CreateFranchises < ActiveRecord::Migration[6.1]
  def change
    create_table :franchises do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

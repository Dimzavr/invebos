# frozen_string_literal: true

class CreateFranchises < ActiveRecord::Migration[6.1]
  def change
    create_table :franchises do |t|
      t.string   :title
      t.text     :description
      t.string   :investment
      t.string   :contribution
      t.string   :royality
      t.string   :franchise_type
      t.string   :location
      t.text     :additionally_franchise
      t.string   :franchise_author
      t.string   :unp_franchise
      t.text     :about_company
      t.string   :avatar

      t.timestamps
    end
  end
end

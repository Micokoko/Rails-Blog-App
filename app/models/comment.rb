class CreateComments < ActiveRecord::Migration[6.0]
    def change
      create_table :comments do |t|
        t.string :content, null: false # Add null: false for non-empty content
  
        t.timestamps
      end
    end
  end


  class Comment < ApplicationRecord
    validates :content, presence: true
  end
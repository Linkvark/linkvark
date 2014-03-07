class CreateSearches < ActiveRecord::Migration

  def change
    create_table :searches do |t|
      # t.has_many :links
      t.string :keyword
      t.datetime :datetime
      t.timestamps
    end
  end
end
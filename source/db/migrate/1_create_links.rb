class CreateLinks < ActiveRecord::Migration

  def change
    create_table :links do |t|
      t.belongs_to :search
      t.string :link_url
      t.timestamps
    end
  end
end
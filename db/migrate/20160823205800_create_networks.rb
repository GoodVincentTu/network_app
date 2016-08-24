class CreateNetworks < ActiveRecord::Migration[5.0]
  def change
    create_table :networks do |t|
      t.string :name
      t.string :image
      t.string :contact_info
      t.string :slug
      t.string :url

      t.timestamps
    end
  end
end

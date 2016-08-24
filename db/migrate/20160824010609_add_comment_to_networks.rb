class AddCommentToNetworks < ActiveRecord::Migration[5.0]
  def change
    add_column :networks, :comment, :string
  end
end

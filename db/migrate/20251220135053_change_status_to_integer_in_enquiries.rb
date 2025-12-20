class ChangeStatusToIntegerInEnquiries < ActiveRecord::Migration[8.0]
  def change
    remove_column :enquiries, :status
    add_column :enquiries, :status, :integer, default: 0, null: false
  end
end

class AddPreferredDateTimeToEnquiries < ActiveRecord::Migration[8.0]
  def change
    add_column :enquiries, :preferred_date_time, :datetime
  end
end

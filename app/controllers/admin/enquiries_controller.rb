class Admin::EnquiriesController < ApplicationController
  def index
    @enquiries=Enquiry.order(created_at: :desc)
  end
end

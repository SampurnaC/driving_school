class Admin::EnquiriesController < ApplicationController
  before_action :authenticate_admin!
  def index
    @enquiries=Enquiry.order(created_at: :desc)
  end
end

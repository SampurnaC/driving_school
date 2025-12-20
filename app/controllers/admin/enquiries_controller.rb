class Admin::EnquiriesController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_enquiry, only: [:edit, :update, :destroy]
  def index
    @enquiries=Enquiry.order(created_at: :desc)
  end

  def destroy
    @enquiry.destroy
    redirect_to admin_enquiries_path, notice: "Enquiry deleted seccessfully"
  end

  def edit
  end

  def update
    if @enquiry.update(enquiry_params)
      redirect_to admin_enquiries_path, notice: "Enquiry updated successfully"
    end
  end

  private
  def set_enquiry
    @enquiry = Enquiry.find(params[:id])
  end

  def enquiry_params
    params.require(:enquiry).permit(:status)
  end
end

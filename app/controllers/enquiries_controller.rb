class EnquiriesController < ApplicationController
  def new
    @enquiry = Enquiry.new
  end

  def create
    @enquiry= Enquiry.new(enquiry_params)
    if @enquiry.save
      EnquiryMailer.new_enquiry(@enquiry).deliver_now
      redirect_to root_path
    end
  end

  private
  def enquiry_params
    params.require(:enquiry).permit(:name, :email, :phone, :message)
  end
end

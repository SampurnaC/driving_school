class EnquiriesController < ApplicationController
  def new
    @enquiry = Enquiry.new
  end

  def create
    @enquiry= Enquiry.new(enquiry_params)
    if @enquiry.save
      flash[:success]="Thank you! Your form has been submitted."
      EnquiryMailer.new_enquiry(@enquiry).deliver_later
      redirect_to root_path

    else
      flash[:alert]="Something went wrong.Please try again."
      redirect_to root_path
    end
  end

  private
  def enquiry_params
    params.require(:enquiry).permit(:name, :email, :phone, :message, :preferred_date_time)
  end
end

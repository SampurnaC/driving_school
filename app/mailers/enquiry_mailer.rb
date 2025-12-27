class EnquiryMailer < ApplicationMailer
  default to: "admin@fndrivingschool.ca"

  def new_enquiry(enquiry)
    @enquiry = enquiry
    mail(subject: "New Enquiry")
  end
end

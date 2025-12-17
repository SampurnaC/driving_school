class EnquiryMailer < ApplicationMailer
  default to: "test@test.com"

  def new_enquiry(enquiry)
    @enquiry = enquiry
    mail(subject: "New Enquiry")
  end
end

class EnquiryMailer < ApplicationMailer
  default to: "admin@fndrivingschool.ca"

  def new_enquiry(enquiry)
    @enquiry = enquiry
    mail=mail(subject: "New Enquiry")
    Rails.logger.info "FINAL TO: #{mail.to.inspect}"
    Rails.logger.info "CC: #{mail.cc.inspect}"
    Rails.logger.info "BCC: #{mail.bcc.inspect}"
  end
end

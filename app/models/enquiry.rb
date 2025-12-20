class Enquiry < ApplicationRecord
  enum :status, {pending: 0, contacted:1, completed:2}
end

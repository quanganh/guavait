class ContactMessage < ActiveRecord::Base
  validates :name, :email, :message, :presence => true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Invalid Email Address" }
end

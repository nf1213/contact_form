class Contact < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email_adress
  validates_presence_of :description
  validates_presence_of :subject

  
end

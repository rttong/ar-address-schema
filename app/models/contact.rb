require_relative '../../db/config'

class Contact < ActiveRecord::Base
  validates :email, :format => { :with    => /.+@.+\..{2,}/
                                 :message => "Invalid email address." }
  validates :phone, :format => { :with => /\d{3}.*\d{3}.*\d{4}/,
                                 :message => "Phone number must be formatted XXX-XXX-XXXX." }
  validates_presence_of :company
 
  def name
  	self.first_name + " " + self.last_name
  end

  def area_code
  	self.phone[0..2]
  end
end



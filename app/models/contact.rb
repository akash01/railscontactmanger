class Contact < ActiveRecord::Base

	scope :sorted, lambda {order('contacts.created_at DESC')}

	validates :first_name, :presence => true,
						:length => { :within => 2..25 }

	validates :last_name, :presence => true,
						:length => { :within => 2..25 }

	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

	validates :phone_number, :numericality => true

end

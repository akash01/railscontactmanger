class Contact < ActiveRecord::Base

	scope :sorted, lambda {order('contacts.created_at DESC')}

	#validates :first_name, :presence => true,
	#					:length => { :within => 2..25 }

end

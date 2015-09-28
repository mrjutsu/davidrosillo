class Contact < ActiveRecord::Base
	validates :name, :email, :subject, :body, presence: true
end

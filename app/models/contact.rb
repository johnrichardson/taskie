class Contact < ActiveRecord::Base

  validates :phone, :name, :email, :message, presence: true

end

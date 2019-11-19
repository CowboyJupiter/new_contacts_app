class Contact < ApplicationRecord
  # validates :first_name, length: {minimum: 1}
  # validates :middle_name, length: {minimum: 1}
  # validates :last_name, length: {minimum: 1}

  belongs_to :user

  
  def friendly_created_at
    created_at.strftime("%m/%d/%y")
  end

end

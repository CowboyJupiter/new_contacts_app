class Contact < ApplicationRecord
  validates :first_name, length: {minimum: 1}
  validates :middle_name, length: {minimum: 1}
  validates :last_name, length: {minimum: 1}

  
  def friendly_created_at
    created_at.strftime("%m/%d/%y")
  end

end

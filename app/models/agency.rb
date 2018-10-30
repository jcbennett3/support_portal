class Agency < ApplicationRecord
  @states = ["AK","AL","AR","AZ","CA","CO","CT","DE","FL","GA","HI","IA","ID","IL","IN","KS","KY","LA","MA","MD","ME","MI","MN","MO","MS","MT","NC","ND","NE","NH","NJ","NM","NV","NY","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VA","VT","WA","WI","WV","WY"]
  validates :name, presence: true
  validates :address1, presence: true
  validates :city, presence: true
  validates :zip, presence: true, format: {
    with: /\d{5}(\-?\d{4})?/,
    message: "must be a valid U.S. zip code"
  }
  validates :state, presence: true
  
  validates :phone, format: {
    with: /\A\s*(?:\+?(\d{1,3}))?([-. (]*(\d{3})[-. )]*)?((\d{3})[-. ]*(\d{2,4})(?:[-.x ]*(\d+))?)\s*\z/,
    message: "must be a valid phone number"
  }

  has_many :clients, dependent: :destroy
  has_many :users, dependent: :destroy
  has_many :priorities, dependent: :destroy
end
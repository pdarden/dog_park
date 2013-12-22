class Owner < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/i
  validates_uniqueness_of :email, case_insensitive: true
  has_many :owner_dogs, inverse_of: :owner
  has_many :dogs, through: :owner_dogs
end

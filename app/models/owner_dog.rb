class OwnerDog < ActiveRecord::Base
  validates_presence_of :owner_id
  validates_presence_of :dog_id
  belongs_to :owner, inverse_of: :owner_dogs
  belongs_to :dog, inverse_of: :owner_dogs
end

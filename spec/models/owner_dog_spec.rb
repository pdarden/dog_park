require 'spec_helper'

describe OwnerDog do
  let(:blanks) { ['', nil] }

  it { should have_valid(:dog_id).when(9) }
  it { should_not have_valid(:dog_id).when(*blanks) }

  it { should have_valid(:owner_id).when(2) }
  it { should_not have_valid(:owner_id).when(*blanks) }

  it { should belong_to(:owner) }
  it { should belong_to(:dog) }
end

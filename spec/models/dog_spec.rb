require 'spec_helper'

describe Dog do
  let(:blanks) { ['', nil] }

  it { should have_valid(:name).when('Max') }
  it { should_not have_valid(:name).when(*blanks) }

  it { should have_many(:owners).through(:owner_dogs) }
end

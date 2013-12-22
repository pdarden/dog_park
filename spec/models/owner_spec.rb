require 'spec_helper'

describe Owner do
  let(:blanks) { ['', nil] }

  it { should have_valid(:first_name).when('Bob') }
  it { should_not have_valid(:first_name).when(*blanks) }
  it { should have_valid(:last_name).when('Smith') }
  it { should_not have_valid(:last_name).when(*blanks) }

  let(:invalid_emails) { ['user@mycom', 'usermy.com', 'user', '.com', 'my.com'] }

  it { should have_valid(:email).when('user@example.com') }
  it { should_not have_valid(:email).when(*invalid_emails) }

  describe 'validates uniqueness of email' do
    before(:each) do
      FactoryGirl.create(:owner)
    end
    it { should validate_uniqueness_of(:email) }
  end

  it { should have_many(:dogs).through(:owner_dogs) }
end

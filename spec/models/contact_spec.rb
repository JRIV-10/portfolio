require "rails_helper"

RSpec.describe Contact, type: :model do
  describe "validations" do
    it { should validate_presence_of :linkedin}
    it { should validate_presence_of :github}
    it { should validate_presence_of :email}
  end

  describe "relationships" do
    it {should belong_to :employee}
  end
end
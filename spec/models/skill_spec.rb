require "rails_helper"

RSpec.describe Skill, type: :model do
  describe "validations" do
    it { should validate_presence_of :primary_lang}
    it { should validate_presence_of :framework}
    it { should validate_presence_of :learning}
  end

  describe "relationships" do
    it {should belong_to :employee}
  end
end
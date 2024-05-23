require "rails_helper"

RSpec.describe Project, type: :model do
  describe "validations" do
    it { should validate_presence_of :name}
    it { should validate_presence_of :description}
    it { should validate_presence_of :link}
  end

  describe "relationships" do
    it {should belong_to :employee}
  end
end
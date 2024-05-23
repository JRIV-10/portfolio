require "rails_helper"

RSpec.describe Employee, type: :model do
  describe "validations" do
    it { should validate_presence_of :name}
    it { should validate_presence_of :about_me}
    it { should validate_presence_of :resume}
  end

  describe "relationships" do
    it {should have_many :projects}
    it {should have_many :skills}
    it {should have_many :contacts}
  end
end
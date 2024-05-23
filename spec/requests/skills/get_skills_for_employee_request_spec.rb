require "rails_helper"

RSpec.describe "Get Skills for Employee", type: :request do
  describe "As a User" do

    before do
      @employee = Employee.create!(name: "Joey", about_me: "Some Random Facts", resume: "Link to a resume")
      @skills = Skill.create!(primary_lang: "Ruby", framework: "Rails", learning: "CORS", employee_id: @employee.id)
    end

    it "gets employee skills via HTTP request" do
      get "/api/v0/employees/#{@employee.id}/skills"

      expect(response).to be_successful
      expect(response.status).to eq(200)

      result = JSON.parse(response.body, symbolize_names: true)
      expect(result).to be_a(Hash)
      expect(result).to have_key(:data)
      expect(result[:data]).to be_a(Array)

      data = JSON.parse(response.body, symbolize_names: true)[:data].first

      check_hash_structure(data, :id, String)
      check_hash_structure(data, :type, String)
      check_hash_structure(data, :attributes, Hash)
      check_hash_structure(data[:attributes], :primary_lang, String)
      check_hash_structure(data[:attributes], :framework, String)
      check_hash_structure(data[:attributes], :learning, String)
      check_hash_structure(data[:attributes], :employee_id, Integer)
    end
  end 
end
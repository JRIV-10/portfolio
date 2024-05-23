require "rails_helper"

RSpec.describe "Get Contact Info for Employee", type: :request do
  describe "As a User" do

    before do
      @employee = Employee.create!(name: "Joey", about_me: "Some Random Facts", resume: "Link to a resume")
      @contact = Contact.create!(linkedin: "Url to linkedin account", github: "url to github account", email: "email@email.com", employee_id: @employee.id)
    end

    it "gets contact info for an employee via HTTP request" do
      get "/api/v0/employees/#{@employee.id}/contact"

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
      check_hash_structure(data[:attributes], :linkedin, String)
      check_hash_structure(data[:attributes], :github, String)
      check_hash_structure(data[:attributes], :email, String)
      check_hash_structure(data[:attributes], :employee_id, Integer)
    end
  end
end
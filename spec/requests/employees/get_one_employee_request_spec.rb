require "rails_helper"

RSpec.describe "Get One Employee", type: :request do
  describe "As a user" do

    before do
      @employee = Employee.create!(name: "Joey", about_me: "Some Random Facts", resume: "Link to a resume")
    end

    it "gets one employee via HTTP request" do
      get "/api/v0/employees/#{@employee.id}"

      expect(response).to be_successful
      expect(response.status).to eq(200)

      result = JSON.parse(response.body, symbolize_names: true)
      
      expect(result).to be_a(Hash)
      expect(result).to have_key(:data)
      expect(result[:data]).to be_a(Hash)

      data = JSON.parse(response.body, symbolize_names: true)[:data]

      expect(data).to have_key(:id)
      expect(data[:id]).to eq("#{@employee.id}")
      expect(data).to have_key(:type)
      expect(data[:type]).to eq("employee")
      expect(data).to have_key(:attributes)
      expect(data[:attributes]).to be_a(Hash)

      attributes = JSON.parse(response.body, symbolize_names: true)[:data][:attributes]

      expect(attributes).to have_key(:name)
      expect(attributes[:name]).to eq("Joey")
      expect(attributes).to have_key(:about_me)
      expect(attributes[:about_me]).to eq("Some Random Facts")
      expect(attributes).to have_key(:resume)
      expect(attributes[:resume]).to eq("Link to a resume")
    end
  end 
end
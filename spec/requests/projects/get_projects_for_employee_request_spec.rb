require "rails_helper"

RSpec.describe "Get All Projects for an Employee", type: :request do
  describe "As a User" do

    before do
      @employee = Employee.create!(name: "Joey", about_me: "Some Random Facts", resume: "Link to a resume")
      @project_1 = Project.create!(name: "TattDaddy BE", description: "Connecting People", link: "Link to github", employee_id: @employee.id)
      @project_2 = Project.create!(name: "TattDaddy FE", description: "Connecting People", link: "Link to github", employee_id: @employee.id)
      @project_3 = Project.create!(name: "Bloom Brothers BE", description: "Plant Sim", link: "Link to github", employee_id: @employee.id)
    end

    it "gets all projects for an Employee via HTTP request" do
      get "/api/v0/employees/#{@employee.id}/projects" 

      expect(response).to be_successful
      expect(response.status).to eq(200)

      result = JSON.parse(response.body, symbolize_names: true)
  
      expect(result).to be_a(Hash)
      expect(result).to have_key(:data)
      expect(result[:data]).to be_a(Array)
      expect(result[:data].count).to eq(3)

      result[:data].each do |project| 
        check_hash_structure(project, :id, String)
        check_hash_structure(project, :type, String)
        check_hash_structure(project[:attributes], :name, String)
        check_hash_structure(project[:attributes], :description, String)
        check_hash_structure(project[:attributes], :link, String)
        check_hash_structure(project[:attributes], :employee_id, Integer)
      end
    end
  end
end
class Api::V0::ProjectsController < ApplicationController
  def index
    employee = Employee.find(params[:employee_id])
    render json: ProjectSerializer.new(employee.projects)
  end
end
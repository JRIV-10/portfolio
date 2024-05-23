class Api::V0::SkillsController < ApplicationController 
  def index 
    employee = Employee.find(params[:employee_id])
    render json: SkillsSerializer.new(employee.skills)
  end
end
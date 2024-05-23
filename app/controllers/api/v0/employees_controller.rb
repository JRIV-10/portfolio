class Api::V0::EmployeesController < ApplicationController
  def show 
    employee = Employee.find(params[:id])
    render json: EmployeeSerializer.new(employee)
  end
end
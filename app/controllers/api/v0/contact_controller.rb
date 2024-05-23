class Api::V0::ContactController < ApplicationController 
  def index
    employee = Employee.find(params[:employee_id])
    render json: ContactSerializer.new(employee.contacts)
  end
end
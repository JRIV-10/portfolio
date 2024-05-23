class EmployeeSerializer
  include JSONAPI::Serializer
  attributes :name, :about_me, :resume
end

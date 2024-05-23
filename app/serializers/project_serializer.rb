class ProjectSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :link, :employee_id
end

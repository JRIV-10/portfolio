class ContactSerializer
  include JSONAPI::Serializer
  attributes :linkedin, :github, :email, :employee_id
end

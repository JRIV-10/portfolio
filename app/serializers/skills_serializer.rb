class SkillsSerializer
  include JSONAPI::Serializer
  attributes :primary_lang, :framework, :learning, :employee_id
end

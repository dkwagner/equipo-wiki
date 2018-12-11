PaperTrail.config.version_limit = 3
PaperTrail.serializer = PaperTrail::Serializers::JSON

PaperTrail::Version.class_eval do
  def changed_object
    @changed_object ||= JSON.parse(self.object, object_class: OpenStruct)
  end
end
# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module AzureResourceManagement
  module Models
    #
    # Model object.
    #
    class Dependency
      # @return [Array<BasicDependency>] Gets the list of dependencies.
      attr_accessor :depends_on

      # @return [String] Gets or sets the ID of the dependency.
      attr_accessor :id

      # @return [String] Gets or sets the dependency resource type.
      attr_accessor :resource_type

      # @return [String] Gets or sets the dependency resource name.
      attr_accessor :resource_name

      def initialize
        @depends_on = [];
      end

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        @depends_on.each{ |e| e.validate if e.respond_to?(:validate) } unless @depends_on.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.depends_on
        if (serialized_property)
          serializedArray = [];
          serialized_property.each do |element|
            if (element)
              element = AzureResourceManagement::Models::BasicDependency.serialize_object(element)
            end
            serializedArray.push(element);
          end
          serialized_property = serializedArray;
        end
        output_object['dependsOn'] = serialized_property unless serialized_property.nil?

        serialized_property = object.id
        output_object['id'] = serialized_property unless serialized_property.nil?

        serialized_property = object.resource_type
        output_object['resourceType'] = serialized_property unless serialized_property.nil?

        serialized_property = object.resource_name
        output_object['resourceName'] = serialized_property unless serialized_property.nil?
        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [Dependency] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = Dependency.new

        deserialized_property = object['dependsOn']
        if (deserialized_property)
          deserializedArray = [];
          deserialized_property.each do |element1|
            if (element1)
              element1 = AzureResourceManagement::Models::BasicDependency.deserialize_object(element1)
            end
            deserializedArray.push(element1);
          end
          deserialized_property = deserializedArray;
        end
        output_object.depends_on = deserialized_property

        deserialized_property = object['id']
        output_object.id = deserialized_property

        deserialized_property = object['resourceType']
        output_object.resource_type = deserialized_property

        deserialized_property = object['resourceName']
        output_object.resource_name = deserialized_property
        output_object.validate
        output_object
      end
    end
  end
end

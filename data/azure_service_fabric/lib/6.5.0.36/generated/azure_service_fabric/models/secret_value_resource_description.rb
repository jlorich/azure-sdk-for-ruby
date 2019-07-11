# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # This type describes a value of a secret resource. The name of this
    # resource is the version identifier corresponding to this secret value.
    #
    class SecretValueResourceDescription

      include MsRestAzure

      # @return [String] Version identifier of the secret value.
      attr_accessor :name

      # @return [String] The actual value of the secret.
      attr_accessor :value


      #
      # Mapper for SecretValueResourceDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecretValueResourceDescription',
          type: {
            name: 'Composite',
            class_name: 'SecretValueResourceDescription',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.value',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end

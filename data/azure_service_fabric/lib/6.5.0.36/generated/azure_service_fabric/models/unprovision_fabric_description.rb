# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Describes the parameters for unprovisioning a cluster.
    #
    class UnprovisionFabricDescription

      include MsRestAzure

      # @return [String] The cluster code package version.
      attr_accessor :code_version

      # @return [String] The cluster manifest version.
      attr_accessor :config_version


      #
      # Mapper for UnprovisionFabricDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UnprovisionFabricDescription',
          type: {
            name: 'Composite',
            class_name: 'UnprovisionFabricDescription',
            model_properties: {
              code_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CodeVersion',
                type: {
                  name: 'String'
                }
              },
              config_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ConfigVersion',
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

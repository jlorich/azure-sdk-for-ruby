# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # The cluster version.
    #
    class ClusterVersion

      include MsRestAzure

      # @return [String] The Service Fabric cluster runtime version.
      attr_accessor :version


      #
      # Mapper for ClusterVersion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterVersion',
          type: {
            name: 'Composite',
            class_name: 'ClusterVersion',
            model_properties: {
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Version',
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

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Response body that wraps container API result.
    #
    class ContainerApiResponse

      include MsRestAzure

      # @return [ContainerApiResult] Container API result.
      attr_accessor :container_api_result


      #
      # Mapper for ContainerApiResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerApiResponse',
          type: {
            name: 'Composite',
            class_name: 'ContainerApiResponse',
            model_properties: {
              container_api_result: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ContainerApiResult',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerApiResult'
                }
              }
            }
          }
        }
      end
    end
  end
end

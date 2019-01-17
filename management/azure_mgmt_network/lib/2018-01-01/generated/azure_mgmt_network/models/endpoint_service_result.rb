# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_01_01
  module Models
    #
    # Endpoint service.
    #
    class EndpointServiceResult < SubResource

      include MsRestAzure

      # @return [String] Name of the endpoint service.
      attr_accessor :name

      # @return [String] Type of the endpoint service.
      attr_accessor :type


      #
      # Mapper for EndpointServiceResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EndpointServiceResult',
          type: {
            name: 'Composite',
            class_name: 'EndpointServiceResult',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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

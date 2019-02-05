# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # Response for GetConnectionSharedKey API service call
    #
    class ConnectionSharedKey < SubResource

      include MsRestAzure

      # @return [String] The virtual network connection shared key value.
      attr_accessor :value


      #
      # Mapper for ConnectionSharedKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectionSharedKey',
          type: {
            name: 'Composite',
            class_name: 'ConnectionSharedKey',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: true,
                serialized_name: 'value',
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
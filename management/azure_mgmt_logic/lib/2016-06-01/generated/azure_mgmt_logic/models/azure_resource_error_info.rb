# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The azure resource error info.
    #
    class AzureResourceErrorInfo < ErrorInfo

      include MsRestAzure

      # @return [String] The error message.
      attr_accessor :message

      # @return [Array<AzureResourceErrorInfo>] The error details.
      attr_accessor :details


      #
      # Mapper for AzureResourceErrorInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureResourceErrorInfo',
          type: {
            name: 'Composite',
            class_name: 'AzureResourceErrorInfo',
            model_properties: {
              code: {
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              details: {
                required: false,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AzureResourceErrorInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureResourceErrorInfo'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end

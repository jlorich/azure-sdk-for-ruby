# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_07_01
  module Models
    #
    # Error details for the alert.
    #
    class AlertErrorDetails

      include MsRestAzure

      # @return [String] Error code.
      attr_accessor :error_code

      # @return [String] Error Message.
      attr_accessor :error_message

      # @return [Integer] Number of occurrences.
      attr_accessor :occurrences


      #
      # Mapper for AlertErrorDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AlertErrorDetails',
          type: {
            name: 'Composite',
            class_name: 'AlertErrorDetails',
            model_properties: {
              error_code: {
                required: false,
                read_only: true,
                serialized_name: 'errorCode',
                type: {
                  name: 'String'
                }
              },
              error_message: {
                required: false,
                read_only: true,
                serialized_name: 'errorMessage',
                type: {
                  name: 'String'
                }
              },
              occurrences: {
                required: false,
                read_only: true,
                serialized_name: 'occurrences',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end

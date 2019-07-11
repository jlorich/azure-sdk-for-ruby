# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_05_01_preview
  module Models
    #
    # The response from the GenerateCredentials operation.
    #
    class GenerateCredentialsResult

      include MsRestAzure

      # @return [String] The username for a container registry.
      attr_accessor :username

      # @return [Array<TokenPassword>] The list of passwords for a container
      # registry.
      attr_accessor :passwords


      #
      # Mapper for GenerateCredentialsResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GenerateCredentialsResult',
          type: {
            name: 'Composite',
            class_name: 'GenerateCredentialsResult',
            model_properties: {
              username: {
                client_side_validation: true,
                required: false,
                serialized_name: 'username',
                type: {
                  name: 'String'
                }
              },
              passwords: {
                client_side_validation: true,
                required: false,
                serialized_name: 'passwords',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TokenPasswordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TokenPassword'
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

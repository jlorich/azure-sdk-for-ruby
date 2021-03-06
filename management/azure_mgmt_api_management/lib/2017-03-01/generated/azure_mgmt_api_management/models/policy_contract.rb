# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2017_03_01
  module Models
    #
    # Policy Contract details.
    #
    class PolicyContract < Resource

      include MsRestAzure

      # @return [String] Json escaped Xml Encoded contents of the Policy.
      attr_accessor :policy_content


      #
      # Mapper for PolicyContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyContract',
          type: {
            name: 'Composite',
            class_name: 'PolicyContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              policy_content: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.policyContent',
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

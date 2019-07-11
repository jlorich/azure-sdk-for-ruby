# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Describes the policy to be used for placement of a Service Fabric service
    # where a particular fault or upgrade domain should not be used for
    # placement of the instances or replicas of that service.
    #
    class ServicePlacementInvalidDomainPolicyDescription < ServicePlacementPolicyDescription

      include MsRestAzure


      def initialize
        @Type = "InvalidDomain"
      end

      attr_accessor :Type

      # @return [String] The name of the domain that should not be used for
      # placement.
      attr_accessor :domain_name


      #
      # Mapper for ServicePlacementInvalidDomainPolicyDescription class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InvalidDomain',
          type: {
            name: 'Composite',
            class_name: 'ServicePlacementInvalidDomainPolicyDescription',
            model_properties: {
              Type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Type',
                type: {
                  name: 'String'
                }
              },
              domain_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'DomainName',
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

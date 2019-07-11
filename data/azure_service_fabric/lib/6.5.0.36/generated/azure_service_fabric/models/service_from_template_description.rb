# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Defines description for creating a Service Fabric service from a template
    # defined in the application manifest.
    #
    class ServiceFromTemplateDescription

      include MsRestAzure

      # @return [String] The name of the application, including the 'fabric:'
      # URI scheme.
      attr_accessor :application_name

      # @return [String] The full name of the service with 'fabric:' URI
      # scheme.
      attr_accessor :service_name

      # @return [String] Name of the service type as specified in the service
      # manifest.
      attr_accessor :service_type_name

      # @return [Array<Integer>] The initialization data for the newly created
      # service instance.
      attr_accessor :initialization_data

      # @return [ServicePackageActivationMode] The activation mode of service
      # package to be used for a service. Possible values include:
      # 'SharedProcess', 'ExclusiveProcess'
      attr_accessor :service_package_activation_mode

      # @return [String] The DNS name of the service. It requires the DNS
      # system service to be enabled in Service Fabric cluster.
      attr_accessor :service_dns_name


      #
      # Mapper for ServiceFromTemplateDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceFromTemplateDescription',
          type: {
            name: 'Composite',
            class_name: 'ServiceFromTemplateDescription',
            model_properties: {
              application_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ApplicationName',
                type: {
                  name: 'String'
                }
              },
              service_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceName',
                type: {
                  name: 'String'
                }
              },
              service_type_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceTypeName',
                type: {
                  name: 'String'
                }
              },
              initialization_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'InitializationData',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              service_package_activation_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServicePackageActivationMode',
                type: {
                  name: 'String'
                }
              },
              service_dns_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceDnsName',
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

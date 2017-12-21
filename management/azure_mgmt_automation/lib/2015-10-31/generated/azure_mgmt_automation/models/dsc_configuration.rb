# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the configuration type.
    #
    class DscConfiguration < Resource

      include MsRestAzure

      # @return [DscConfigurationProvisioningState] Gets or sets the
      # provisioning state of the configuration. Possible values include:
      # 'Succeeded'
      attr_accessor :provisioning_state

      # @return [Integer] Gets or sets the job count of the configuration.
      attr_accessor :job_count

      # @return [Hash{String => DscConfigurationParameter}] Gets or sets the
      # configuration parameters.
      attr_accessor :parameters

      # @return [ContentSource] Gets or sets the source.
      attr_accessor :source

      # @return [DscConfigurationState] Gets or sets the state of the
      # configuration. Possible values include: 'New', 'Edit', 'Published'
      attr_accessor :state

      # @return [Boolean] Gets or sets verbose log option.
      attr_accessor :log_verbose

      # @return [DateTime] Gets or sets the creation time.
      attr_accessor :creation_time

      # @return [DateTime] Gets or sets the last modified time.
      attr_accessor :last_modified_time

      # @return [String] Gets or sets the description.
      attr_accessor :description

      # @return [String] Gets or sets the etag of the resource.
      attr_accessor :etag


      #
      # Mapper for DscConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DscConfiguration',
          type: {
            name: 'Composite',
            class_name: 'DscConfiguration',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'DscConfigurationProvisioningState'
                }
              },
              job_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.jobCount',
                type: {
                  name: 'Number'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DscConfigurationParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DscConfigurationParameter'
                      }
                  }
                }
              },
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.source',
                type: {
                  name: 'Composite',
                  class_name: 'ContentSource'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              log_verbose: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.logVerbose',
                type: {
                  name: 'Boolean'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
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
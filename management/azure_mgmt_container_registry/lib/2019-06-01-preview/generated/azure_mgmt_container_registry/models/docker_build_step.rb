# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_06_01_preview
  module Models
    #
    # The Docker build step.
    #
    class DockerBuildStep < TaskStepProperties

      include MsRestAzure


      def initialize
        @type = "Docker"
      end

      attr_accessor :type

      # @return [Array<String>] The fully qualified image names including the
      # repository and tag.
      attr_accessor :image_names

      # @return [Boolean] The value of this property indicates whether the
      # image built should be pushed to the registry or not. Default value:
      # true .
      attr_accessor :is_push_enabled

      # @return [Boolean] The value of this property indicates whether the
      # image cache is enabled or not. Default value: false .
      attr_accessor :no_cache

      # @return [String] The Docker file path relative to the source context.
      attr_accessor :docker_file_path

      # @return [String] The name of the target build stage for the docker
      # build.
      attr_accessor :target

      # @return [Array<Argument>] The collection of override arguments to be
      # used when executing this build step.
      attr_accessor :arguments


      #
      # Mapper for DockerBuildStep class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Docker',
          type: {
            name: 'Composite',
            class_name: 'DockerBuildStep',
            model_properties: {
              base_image_dependencies: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'baseImageDependencies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BaseImageDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BaseImageDependency'
                      }
                  }
                }
              },
              context_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contextPath',
                type: {
                  name: 'String'
                }
              },
              context_access_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contextAccessToken',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              image_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'imageNames',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_push_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isPushEnabled',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              no_cache: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noCache',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              docker_file_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'dockerFilePath',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              arguments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'arguments',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArgumentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Argument'
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

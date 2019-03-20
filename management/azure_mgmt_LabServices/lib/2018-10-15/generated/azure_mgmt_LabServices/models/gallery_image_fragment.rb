# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::LabServices::Mgmt::V2018_10_15
  module Models
    #
    # Represents an image from the Azure Marketplace
    #
    class GalleryImageFragment < Resource

      include MsRestAzure

      # @return [Boolean] Indicates whether this gallery image is enabled.
      attr_accessor :is_enabled

      # @return [Boolean] Indicates whether this gallery has been overridden
      # for this lab account
      attr_accessor :is_override

      # @return [Boolean] Indicates if the plan has been authorized for
      # programmatic deployment.
      attr_accessor :is_plan_authorized

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for GalleryImageFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GalleryImageFragment',
          type: {
            name: 'Composite',
            class_name: 'GalleryImageFragment',
            model_properties: {
              id: {
                required: false,
                read_only: true,
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
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_enabled: {
                required: false,
                serialized_name: 'properties.isEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_override: {
                required: false,
                serialized_name: 'properties.isOverride',
                type: {
                  name: 'Boolean'
                }
              },
              is_plan_authorized: {
                required: false,
                serialized_name: 'properties.isPlanAuthorized',
                type: {
                  name: 'Boolean'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
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
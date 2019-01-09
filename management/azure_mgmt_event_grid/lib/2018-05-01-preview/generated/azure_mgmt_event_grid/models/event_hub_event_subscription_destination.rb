# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2018_05_01_preview
  module Models
    #
    # Information about the event hub destination for an event subscription
    #
    class EventHubEventSubscriptionDestination < EventSubscriptionDestination

      include MsRestAzure


      def initialize
        @endpointType = "EventHub"
      end

      attr_accessor :endpointType

      # @return [String] The Azure Resource Id that represents the endpoint of
      # an Event Hub destination of an event subscription.
      attr_accessor :resource_id


      #
      # Mapper for EventHubEventSubscriptionDestination class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventHub',
          type: {
            name: 'Composite',
            class_name: 'EventHubEventSubscriptionDestination',
            model_properties: {
              endpointType: {
                required: true,
                serialized_name: 'endpointType',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                required: false,
                serialized_name: 'properties.resourceId',
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

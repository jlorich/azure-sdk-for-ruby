# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # Specifies the peering configuration.
    #
    class ExpressRouteCircuitPeeringConfig

      include MsRestAzure

      # @return [Array<String>] The reference of AdvertisedPublicPrefixes.
      attr_accessor :advertised_public_prefixes

      # @return [Array<String>] The communities of bgp peering. Specified for
      # microsoft peering
      attr_accessor :advertised_communities

      # @return [ExpressRouteCircuitPeeringAdvertisedPublicPrefixState]
      # AdvertisedPublicPrefixState of the Peering resource. Possible values
      # are 'NotConfigured', 'Configuring', 'Configured', and
      # 'ValidationNeeded'. Possible values include: 'NotConfigured',
      # 'Configuring', 'Configured', 'ValidationNeeded'
      attr_accessor :advertised_public_prefixes_state

      # @return [Integer] The legacy mode of the peering.
      attr_accessor :legacy_mode

      # @return [Integer] The CustomerASN of the peering.
      attr_accessor :customer_asn

      # @return [String] The RoutingRegistryName of the configuration.
      attr_accessor :routing_registry_name


      #
      # Mapper for ExpressRouteCircuitPeeringConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteCircuitPeeringConfig',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitPeeringConfig',
            model_properties: {
              advertised_public_prefixes: {
                required: false,
                serialized_name: 'advertisedPublicPrefixes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              advertised_communities: {
                required: false,
                serialized_name: 'advertisedCommunities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              advertised_public_prefixes_state: {
                required: false,
                serialized_name: 'advertisedPublicPrefixesState',
                type: {
                  name: 'String'
                }
              },
              legacy_mode: {
                required: false,
                serialized_name: 'legacyMode',
                type: {
                  name: 'Number'
                }
              },
              customer_asn: {
                required: false,
                serialized_name: 'customerASN',
                type: {
                  name: 'Number'
                }
              },
              routing_registry_name: {
                required: false,
                serialized_name: 'routingRegistryName',
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

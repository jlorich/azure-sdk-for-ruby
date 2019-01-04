# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_10_01
  module Models
    #
    # Route table resource.
    #
    class RouteTable < Resource

      include MsRestAzure

      # @return [Array<Route>] Collection of routes contained within a route
      # table.
      attr_accessor :routes

      # @return [Array<Subnet>] A collection of references to subnets.
      attr_accessor :subnets

      # @return [Boolean] Gets or sets whether to disable the routes learned by
      # BGP on that route table. True means disable.
      attr_accessor :disable_bgp_route_propagation

      # @return [String] The provisioning state of the resource. Possible
      # values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag


      #
      # Mapper for RouteTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RouteTable',
          type: {
            name: 'Composite',
            class_name: 'RouteTable',
            model_properties: {
              id: {
                required: false,
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
              routes: {
                required: false,
                serialized_name: 'properties.routes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RouteElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Route'
                      }
                  }
                }
              },
              subnets: {
                required: false,
                read_only: true,
                serialized_name: 'properties.subnets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubnetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Subnet'
                      }
                  }
                }
              },
              disable_bgp_route_propagation: {
                required: false,
                serialized_name: 'properties.disableBgpRoutePropagation',
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
              etag: {
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

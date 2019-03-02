# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PrivateDns::Mgmt::V2018_09_01
  module Models
    #
    # The response to a list virtual network link to Private DNS zone
    # operation.
    #
    class VirtualNetworkLinkListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<VirtualNetworkLink>] Information about the virtual
      # network links to the Private DNS zones.
      attr_accessor :value

      # @return [String] The continuation token for the next page of results.
      attr_accessor :next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<VirtualNetworkLink>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [VirtualNetworkLinkListResult] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for VirtualNetworkLinkListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualNetworkLinkListResult',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkLinkListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualNetworkLinkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualNetworkLink'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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

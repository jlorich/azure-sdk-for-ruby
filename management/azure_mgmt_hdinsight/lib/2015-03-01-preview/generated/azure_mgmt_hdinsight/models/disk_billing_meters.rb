# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  module Models
    #
    # The disk billing meters.
    #
    class DiskBillingMeters

      include MsRestAzure

      # @return [String] The managed disk meter guid.
      attr_accessor :disk_rp_meter

      # @return [String] The managed disk billing sku, P30 or S30.
      attr_accessor :sku

      # @return [Tier] The managed disk billing tier, Standard or Premium.
      # Possible values include: 'Standard', 'Premium'
      attr_accessor :tier


      #
      # Mapper for DiskBillingMeters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiskBillingMeters',
          type: {
            name: 'Composite',
            class_name: 'DiskBillingMeters',
            model_properties: {
              disk_rp_meter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskRpMeter',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'String'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'Enum',
                  module: 'Tier'
                }
              }
            }
          }
        }
      end
    end
  end
end

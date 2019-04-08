# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_01_01
  module Models
    #
    # A forecast resource.
    #
    class Forecast < Resource

      include MsRestAzure

      # @return [String] The usage date of the forecast.
      attr_accessor :usage_date

      # @return [Grain] The granularity of forecast. Possible values include:
      # 'Daily', 'Monthly', 'Yearly'
      attr_accessor :grain

      # @return The amount of charge
      attr_accessor :charge

      # @return [String] The ISO currency in which the meter is charged, for
      # example, USD.
      attr_accessor :currency

      # @return [ChargeType] The type of the charge. Could be actual or
      # forecast. Possible values include: 'Actual', 'Forecast'
      attr_accessor :charge_type

      # @return [Array<ForecastPropertiesConfidenceLevelsItem>] The details
      # about the forecast confidence levels. This is populated only when
      # chargeType is Forecast.
      attr_accessor :confidence_levels


      #
      # Mapper for Forecast class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Forecast',
          type: {
            name: 'Composite',
            class_name: 'Forecast',
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
              tags: {
                required: false,
                read_only: true,
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
              usage_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.usageDate',
                type: {
                  name: 'String'
                }
              },
              grain: {
                required: false,
                serialized_name: 'properties.grain',
                type: {
                  name: 'String'
                }
              },
              charge: {
                required: false,
                read_only: true,
                serialized_name: 'properties.charge',
                type: {
                  name: 'Number'
                }
              },
              currency: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currency',
                type: {
                  name: 'String'
                }
              },
              charge_type: {
                required: false,
                serialized_name: 'properties.chargeType',
                type: {
                  name: 'String'
                }
              },
              confidence_levels: {
                required: false,
                read_only: true,
                serialized_name: 'properties.confidenceLevels',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ForecastPropertiesConfidenceLevelsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ForecastPropertiesConfidenceLevelsItem'
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
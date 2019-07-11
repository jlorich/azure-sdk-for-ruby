# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Information about load reported by replica.
    #
    class LoadMetricReportInfo

      include MsRestAzure

      # @return [String] The name of the metric.
      attr_accessor :name

      # @return [Integer] The value of the load for the metric. In future
      # releases of Service Fabric this parameter will be deprecated in favor
      # of CurrentValue.
      attr_accessor :value

      # @return [String] The double value of the load for the metric.
      attr_accessor :current_value

      # @return [DateTime] The UTC time when the load is reported.
      attr_accessor :last_reported_utc


      #
      # Mapper for LoadMetricReportInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LoadMetricReportInfo',
          type: {
            name: 'Composite',
            class_name: 'LoadMetricReportInfo',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Value',
                type: {
                  name: 'Number'
                }
              },
              current_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CurrentValue',
                type: {
                  name: 'String'
                }
              },
              last_reported_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastReportedUtc',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end

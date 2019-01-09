# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2018_09_15_preview
  module Models
    #
    # NumberLessThan Filter
    #
    class NumberLessThanAdvancedFilter < AdvancedFilter

      include MsRestAzure


      def initialize
        @operatorType = "NumberLessThan"
      end

      attr_accessor :operatorType

      # @return [Float] The filter value
      attr_accessor :value


      #
      # Mapper for NumberLessThanAdvancedFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NumberLessThan',
          type: {
            name: 'Composite',
            class_name: 'NumberLessThanAdvancedFilter',
            model_properties: {
              key: {
                required: false,
                serialized_name: 'key',
                type: {
                  name: 'String'
                }
              },
              operatorType: {
                required: true,
                serialized_name: 'operatorType',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end

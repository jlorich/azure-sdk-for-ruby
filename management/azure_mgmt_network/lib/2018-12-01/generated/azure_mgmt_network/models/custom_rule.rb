# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # Defines contents of a web application rule
    #
    class CustomRule

      include MsRestAzure

      # @return [String] Gets name of the resource that is unique within a
      # policy. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag

      # @return [Integer] Describes priority of the rule. Rules with a lower
      # value will be evaluated before rules with a higher value
      attr_accessor :priority

      # @return [String] Describes type of rule. Default value: 'MatchRule' .
      attr_accessor :rule_type

      # @return [Array<MatchCondition>] List of match conditions
      attr_accessor :match_conditions

      # @return [WebApplicationFirewallAction] Type of Actions. Possible values
      # include: 'Allow', 'Block', 'Log'
      attr_accessor :action


      #
      # Mapper for CustomRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CustomRule',
          type: {
            name: 'Composite',
            class_name: 'CustomRule',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 128
                },
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              priority: {
                required: true,
                serialized_name: 'priority',
                type: {
                  name: 'Number'
                }
              },
              rule_type: {
                required: true,
                is_constant: true,
                serialized_name: 'ruleType',
                default_value: 'MatchRule',
                type: {
                  name: 'String'
                }
              },
              match_conditions: {
                required: true,
                serialized_name: 'matchConditions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MatchConditionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MatchCondition'
                      }
                  }
                }
              },
              action: {
                required: true,
                serialized_name: 'action',
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
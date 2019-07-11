# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Information about the upgrading node and its status
    #
    class NodeUpgradeProgressInfo

      include MsRestAzure

      # @return [String] The name of a Service Fabric node.
      attr_accessor :node_name

      # @return [NodeUpgradePhase] The state of the upgrading node. Possible
      # values include: 'Invalid', 'PreUpgradeSafetyCheck', 'Upgrading',
      # 'PostUpgradeSafetyCheck'
      attr_accessor :upgrade_phase

      # @return [Array<SafetyCheckWrapper>] List of pending safety checks
      attr_accessor :pending_safety_checks


      #
      # Mapper for NodeUpgradeProgressInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeUpgradeProgressInfo',
          type: {
            name: 'Composite',
            class_name: 'NodeUpgradeProgressInfo',
            model_properties: {
              node_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeName',
                type: {
                  name: 'String'
                }
              },
              upgrade_phase: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradePhase',
                type: {
                  name: 'String'
                }
              },
              pending_safety_checks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PendingSafetyChecks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SafetyCheckWrapperElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SafetyCheckWrapper'
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

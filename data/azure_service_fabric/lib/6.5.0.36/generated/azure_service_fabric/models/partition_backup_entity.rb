# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Identifies the Service Fabric stateful partition which is being backed
    # up.
    #
    class PartitionBackupEntity < BackupEntity

      include MsRestAzure


      def initialize
        @EntityKind = "Partition"
      end

      attr_accessor :EntityKind

      # @return [String] The full name of the service with 'fabric:' URI
      # scheme.
      attr_accessor :service_name

      # @return The partition ID identifying the partition.
      attr_accessor :partition_id


      #
      # Mapper for PartitionBackupEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Partition',
          type: {
            name: 'Composite',
            class_name: 'PartitionBackupEntity',
            model_properties: {
              EntityKind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'EntityKind',
                type: {
                  name: 'String'
                }
              },
              service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceName',
                type: {
                  name: 'String'
                }
              },
              partition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PartitionId',
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

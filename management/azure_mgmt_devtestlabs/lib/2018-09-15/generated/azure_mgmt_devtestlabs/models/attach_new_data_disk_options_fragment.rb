# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Properties to attach new disk to the Virtual Machine.
    #
    class AttachNewDataDiskOptionsFragment

      include MsRestAzure

      # @return [Integer] Size of the disk to be attached in Gibibytes.
      attr_accessor :disk_size_gi_b

      # @return [String] The name of the disk to be attached.
      attr_accessor :disk_name

      # @return [StorageType] The storage type for the disk (i.e. Standard,
      # Premium). Possible values include: 'Standard', 'Premium'
      attr_accessor :disk_type


      #
      # Mapper for AttachNewDataDiskOptionsFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AttachNewDataDiskOptionsFragment',
          type: {
            name: 'Composite',
            class_name: 'AttachNewDataDiskOptionsFragment',
            model_properties: {
              disk_size_gi_b: {
                required: false,
                serialized_name: 'diskSizeGiB',
                type: {
                  name: 'Number'
                }
              },
              disk_name: {
                required: false,
                serialized_name: 'diskName',
                type: {
                  name: 'String'
                }
              },
              disk_type: {
                required: false,
                serialized_name: 'diskType',
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

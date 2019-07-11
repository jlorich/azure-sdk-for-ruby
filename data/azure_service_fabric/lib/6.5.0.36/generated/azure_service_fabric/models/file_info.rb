# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Information about a image store file.
    #
    class FileInfo

      include MsRestAzure

      # @return [String] The size of file in bytes.
      attr_accessor :file_size

      # @return [FileVersion] Information about the version of image store
      # file.
      attr_accessor :file_version

      # @return [DateTime] The date and time when the image store file was last
      # modified.
      attr_accessor :modified_date

      # @return [String] The file path relative to the image store root path.
      attr_accessor :store_relative_path


      #
      # Mapper for FileInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FileInfo',
          type: {
            name: 'Composite',
            class_name: 'FileInfo',
            model_properties: {
              file_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FileSize',
                type: {
                  name: 'String'
                }
              },
              file_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FileVersion',
                type: {
                  name: 'Composite',
                  class_name: 'FileVersion'
                }
              },
              modified_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ModifiedDate',
                type: {
                  name: 'DateTime'
                }
              },
              store_relative_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'StoreRelativePath',
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

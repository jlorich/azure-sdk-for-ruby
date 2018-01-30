# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Schema of the Data property of an EventGridEvent for an
    # Microsoft.Storage.BlobDeleted event.
    #
    class StorageBlobDeletedEventData

      include MsRestAzure

      # @return [String] The name of the API/operation that triggered this
      # event.
      attr_accessor :api

      # @return [String] A request id provided by the client of the storage API
      # operation that triggered this event.
      attr_accessor :client_request_id

      # @return [String] The request id generated by the Storage service for
      # the storage API operation that triggered this event.
      attr_accessor :request_id

      # @return [String] The content type of the blob. This is the same as what
      # would be returned in the Content-Type header from the blob.
      attr_accessor :content_type

      # @return [String] The type of blob.
      attr_accessor :blob_type

      # @return [String] The path to the blob.
      attr_accessor :url

      # @return [String] An opaque string value representing the logical
      # sequence of events for any particular blob name. Users can use standard
      # string comparison to understand the relative sequence of two events on
      # the same blob name.
      attr_accessor :sequencer

      # @return For service use only. Diagnostic data occasionally included by
      # the Azure Storage service. This property should be ignored by event
      # consumers.
      attr_accessor :storage_diagnostics


      #
      # Mapper for StorageBlobDeletedEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageBlobDeletedEventData',
          type: {
            name: 'Composite',
            class_name: 'StorageBlobDeletedEventData',
            model_properties: {
              api: {
                client_side_validation: true,
                required: false,
                serialized_name: 'api',
                type: {
                  name: 'String'
                }
              },
              client_request_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clientRequestId',
                type: {
                  name: 'String'
                }
              },
              request_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestId',
                type: {
                  name: 'String'
                }
              },
              content_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contentType',
                type: {
                  name: 'String'
                }
              },
              blob_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blobType',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              sequencer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sequencer',
                type: {
                  name: 'String'
                }
              },
              storage_diagnostics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageDiagnostics',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end

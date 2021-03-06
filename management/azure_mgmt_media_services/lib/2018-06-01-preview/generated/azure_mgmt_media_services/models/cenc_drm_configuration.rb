# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Class to specify DRM configurations of CommonEncryptionCenc scheme in
    # Streaming Policy
    #
    class CencDrmConfiguration

      include MsRestAzure

      # @return [StreamingPolicyPlayReadyConfiguration] PlayReady
      # configurations
      attr_accessor :play_ready

      # @return [StreamingPolicyWidevineConfiguration] Widevine configurations
      attr_accessor :widevine


      #
      # Mapper for CencDrmConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CencDrmConfiguration',
          type: {
            name: 'Composite',
            class_name: 'CencDrmConfiguration',
            model_properties: {
              play_ready: {
                client_side_validation: true,
                required: false,
                serialized_name: 'playReady',
                type: {
                  name: 'Composite',
                  class_name: 'StreamingPolicyPlayReadyConfiguration'
                }
              },
              widevine: {
                client_side_validation: true,
                required: false,
                serialized_name: 'widevine',
                type: {
                  name: 'Composite',
                  class_name: 'StreamingPolicyWidevineConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end

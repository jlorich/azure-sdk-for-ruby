# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Properties describing any presence of blur within the image.
    #
    class Blur

      include MsRestAzure

      # @return [BlurLevel] An enum value indicating level of blurriness.
      # Possible values include: 'Low', 'Medium', 'High'
      attr_accessor :blur_level

      # @return [Float] A number indicating level of blurriness ranging from 0
      # to 1.
      attr_accessor :value


      #
      # Mapper for Blur class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Blur',
          type: {
            name: 'Composite',
            class_name: 'Blur',
            model_properties: {
              blur_level: {
                required: false,
                serialized_name: 'blurLevel',
                type: {
                  name: 'Enum',
                  module: 'BlurLevel'
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

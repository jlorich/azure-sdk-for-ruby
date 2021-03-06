# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ImageSearch::V1_0
  module Models
    #
    # Defines a rating.
    #
    class Rating < PropertiesItem

      include MsRestAzure


      def initialize
        @_type = "Rating"
      end

      attr_accessor :_type

      # @return [Float] The mean (average) rating. The possible values are 1.0
      # through 5.0.
      attr_accessor :rating_value

      # @return [Float] The highest rated review. The possible values are 1.0
      # through 5.0.
      attr_accessor :best_rating


      #
      # Mapper for Rating class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Rating',
          type: {
            name: 'Composite',
            class_name: 'Rating',
            model_properties: {
              text: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              _type: {
                client_side_validation: true,
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              rating_value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ratingValue',
                type: {
                  name: 'Double'
                }
              },
              best_rating: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'bestRating',
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

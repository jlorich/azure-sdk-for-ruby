# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Customvisiontraining::V3_0
  module Models
    #
    # Model object.
    #
    #
    class PredictionQueryToken

      include MsRestAzure

      # @return [String]
      attr_accessor :session

      # @return [String]
      attr_accessor :continuation

      # @return [Integer]
      attr_accessor :max_count

      # @return [OrderBy] Possible values include: 'Newest', 'Oldest',
      # 'Suggested'
      attr_accessor :order_by

      # @return [Array<PredictionQueryTag>]
      attr_accessor :tags

      # @return
      attr_accessor :iteration_id

      # @return [DateTime]
      attr_accessor :start_time

      # @return [DateTime]
      attr_accessor :end_time

      # @return [String]
      attr_accessor :application


      #
      # Mapper for PredictionQueryToken class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PredictionQueryToken',
          type: {
            name: 'Composite',
            class_name: 'PredictionQueryToken',
            model_properties: {
              session: {
                client_side_validation: true,
                required: false,
                serialized_name: 'session',
                type: {
                  name: 'String'
                }
              },
              continuation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'continuation',
                type: {
                  name: 'String'
                }
              },
              max_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxCount',
                type: {
                  name: 'Number'
                }
              },
              order_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'orderBy',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PredictionQueryTagElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PredictionQueryTag'
                      }
                  }
                }
              },
              iteration_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'iterationId',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              application: {
                client_side_validation: true,
                required: false,
                serialized_name: 'application',
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

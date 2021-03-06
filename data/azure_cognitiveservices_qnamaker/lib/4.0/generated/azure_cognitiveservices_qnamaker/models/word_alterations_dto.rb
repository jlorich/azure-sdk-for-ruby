# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # Collection of word alterations.
    #
    class WordAlterationsDTO

      include MsRestAzure

      # @return [Array<AlterationsDTO>] Collection of word alterations.
      attr_accessor :word_alterations


      #
      # Mapper for WordAlterationsDTO class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WordAlterationsDTO',
          type: {
            name: 'Composite',
            class_name: 'WordAlterationsDTO',
            model_properties: {
              word_alterations: {
                client_side_validation: true,
                required: true,
                serialized_name: 'wordAlterations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AlterationsDTOElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AlterationsDTO'
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

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # The runbook property associated with the entity.
    #
    class RunbookAssociationProperty

      include MsRestAzure

      # @return [String] Gets or sets the name of the runbook.
      attr_accessor :name


      #
      # Mapper for RunbookAssociationProperty class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RunbookAssociationProperty',
          type: {
            name: 'Composite',
            class_name: 'RunbookAssociationProperty',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
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
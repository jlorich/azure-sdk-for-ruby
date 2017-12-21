# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The alert settings.
    #
    class AlertSettings < BaseModel

      include MsRestAzure

      # @return [AlertEmailNotificationStatus] Indicates whether email
      # notification enabled or not. Possible values include: 'Enabled',
      # 'Disabled'
      attr_accessor :email_notification

      # @return [String] The alert notification culture.
      attr_accessor :alert_notification_culture

      # @return [AlertEmailNotificationStatus] The value indicating whether
      # alert notification enabled for admin or not. Possible values include:
      # 'Enabled', 'Disabled'
      attr_accessor :notification_to_service_owners

      # @return [Array<String>] The alert notification email list.
      attr_accessor :additional_recipient_email_list


      #
      # Mapper for AlertSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AlertSettings',
          type: {
            name: 'Composite',
            class_name: 'AlertSettings',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              email_notification: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.emailNotification',
                type: {
                  name: 'Enum',
                  module: 'AlertEmailNotificationStatus'
                }
              },
              alert_notification_culture: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.alertNotificationCulture',
                type: {
                  name: 'String'
                }
              },
              notification_to_service_owners: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.notificationToServiceOwners',
                type: {
                  name: 'Enum',
                  module: 'AlertEmailNotificationStatus'
                }
              },
              additional_recipient_email_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.additionalRecipientEmailList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
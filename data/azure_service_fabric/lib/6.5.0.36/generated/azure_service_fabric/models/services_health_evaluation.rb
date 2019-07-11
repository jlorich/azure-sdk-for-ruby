# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Represents health evaluation for services of a certain service type
    # belonging to an application, containing health evaluations for each
    # unhealthy service that impacted current aggregated health state. Can be
    # returned when evaluating application health and the aggregated health
    # state is either Error or Warning.
    #
    class ServicesHealthEvaluation < HealthEvaluation

      include MsRestAzure


      def initialize
        @Kind = "Services"
      end

      attr_accessor :Kind

      # @return [String] Name of the service type of the services.
      attr_accessor :service_type_name

      # @return [Integer] Maximum allowed percentage of unhealthy services from
      # the ServiceTypeHealthPolicy.
      attr_accessor :max_percent_unhealthy_services

      # @return [Integer] Total number of services of the current service type
      # in the application from the health store.
      attr_accessor :total_count

      # @return [Array<HealthEvaluationWrapper>] List of unhealthy evaluations
      # that led to the aggregated health state. Includes all the unhealthy
      # ServiceHealthEvaluation that impacted the aggregated health.
      attr_accessor :unhealthy_evaluations


      #
      # Mapper for ServicesHealthEvaluation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Services',
          type: {
            name: 'Composite',
            class_name: 'ServicesHealthEvaluation',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Description',
                type: {
                  name: 'String'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              service_type_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceTypeName',
                type: {
                  name: 'String'
                }
              },
              max_percent_unhealthy_services: {
                client_side_validation: true,
                required: false,
                serialized_name: 'MaxPercentUnhealthyServices',
                type: {
                  name: 'Number'
                }
              },
              total_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TotalCount',
                type: {
                  name: 'Number'
                }
              },
              unhealthy_evaluations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UnhealthyEvaluations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEvaluationWrapperElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvaluationWrapper'
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

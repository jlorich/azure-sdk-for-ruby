# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # Parameters supplied to the Create Backend operation.
    #
    class BackendContract < BackendBaseParameters

      include MsRestAzure

      # @return [String] Uniquely identifies the backend within the current API
      # Management service instance. The value is a valid relative URL in the
      # format of /backends/{backendId} where {backendId} is a backend
      # identifier.
      attr_accessor :id

      # @return [BackendProtocol] Backend communication protocol. Possible
      # values include: 'http', 'soap'
      attr_accessor :protocol


      #
      # Mapper for BackendContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackendContract',
          type: {
            name: 'Composite',
            class_name: 'BackendContract',
            model_properties: {
              certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificate',
                constraints: {
                  MaxItems: 32
                },
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
              },
              query: {
                client_side_validation: true,
                required: false,
                serialized_name: 'query',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
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
              },
              header: {
                client_side_validation: true,
                required: false,
                serialized_name: 'header',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
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
              },
              url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'url',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              username: {
                client_side_validation: true,
                required: false,
                serialized_name: 'username',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'password',
                type: {
                  name: 'String'
                }
              },
              title: {
                client_side_validation: true,
                required: false,
                serialized_name: 'title',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              skip_certificate_chain_validation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.skipCertificateChainValidation',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              skip_certificate_name_validation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.skipCertificateNameValidation',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protocol',
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
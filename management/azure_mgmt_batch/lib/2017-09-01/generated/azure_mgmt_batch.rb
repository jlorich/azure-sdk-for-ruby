# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2017-09-01/generated/azure_mgmt_batch/module_definition'
require 'ms_rest_azure'

module Azure::Batch::Mgmt::V2017_09_01
  autoload :BatchAccountOperations,                             '2017-09-01/generated/azure_mgmt_batch/batch_account_operations.rb'
  autoload :ApplicationPackageOperations,                       '2017-09-01/generated/azure_mgmt_batch/application_package_operations.rb'
  autoload :ApplicationOperations,                              '2017-09-01/generated/azure_mgmt_batch/application_operations.rb'
  autoload :Location,                                           '2017-09-01/generated/azure_mgmt_batch/location.rb'
  autoload :Operations,                                         '2017-09-01/generated/azure_mgmt_batch/operations.rb'
  autoload :CertificateOperations,                              '2017-09-01/generated/azure_mgmt_batch/certificate_operations.rb'
  autoload :PoolOperations,                                     '2017-09-01/generated/azure_mgmt_batch/pool_operations.rb'
  autoload :BatchManagementClient,                              '2017-09-01/generated/azure_mgmt_batch/batch_management_client.rb'

  module Models
    autoload :FixedScaleSettings,                                 '2017-09-01/generated/azure_mgmt_batch/models/fixed_scale_settings.rb'
    autoload :AutoStorageBaseProperties,                          '2017-09-01/generated/azure_mgmt_batch/models/auto_storage_base_properties.rb'
    autoload :AutoScaleSettings,                                  '2017-09-01/generated/azure_mgmt_batch/models/auto_scale_settings.rb'
    autoload :BatchAccountCreateParameters,                       '2017-09-01/generated/azure_mgmt_batch/models/batch_account_create_parameters.rb'
    autoload :ScaleSettings,                                      '2017-09-01/generated/azure_mgmt_batch/models/scale_settings.rb'
    autoload :KeyVaultReference,                                  '2017-09-01/generated/azure_mgmt_batch/models/key_vault_reference.rb'
    autoload :BatchAccountUpdateParameters,                       '2017-09-01/generated/azure_mgmt_batch/models/batch_account_update_parameters.rb'
    autoload :OperationDisplay,                                   '2017-09-01/generated/azure_mgmt_batch/models/operation_display.rb'
    autoload :BatchAccountRegenerateKeyParameters,                '2017-09-01/generated/azure_mgmt_batch/models/batch_account_regenerate_key_parameters.rb'
    autoload :OperationListResult,                                '2017-09-01/generated/azure_mgmt_batch/models/operation_list_result.rb'
    autoload :ActivateApplicationPackageParameters,               '2017-09-01/generated/azure_mgmt_batch/models/activate_application_package_parameters.rb'
    autoload :AutoScaleRunError,                                  '2017-09-01/generated/azure_mgmt_batch/models/auto_scale_run_error.rb'
    autoload :ApplicationPackage,                                 '2017-09-01/generated/azure_mgmt_batch/models/application_package.rb'
    autoload :AutoScaleRun,                                       '2017-09-01/generated/azure_mgmt_batch/models/auto_scale_run.rb'
    autoload :ListApplicationsResult,                             '2017-09-01/generated/azure_mgmt_batch/models/list_applications_result.rb'
    autoload :NetworkSecurityGroupRule,                           '2017-09-01/generated/azure_mgmt_batch/models/network_security_group_rule.rb'
    autoload :BatchLocationQuota,                                 '2017-09-01/generated/azure_mgmt_batch/models/batch_location_quota.rb'
    autoload :InboundNatPool,                                     '2017-09-01/generated/azure_mgmt_batch/models/inbound_nat_pool.rb'
    autoload :ProxyResource,                                      '2017-09-01/generated/azure_mgmt_batch/models/proxy_resource.rb'
    autoload :PoolEndpointConfiguration,                          '2017-09-01/generated/azure_mgmt_batch/models/pool_endpoint_configuration.rb'
    autoload :DeleteCertificateError,                             '2017-09-01/generated/azure_mgmt_batch/models/delete_certificate_error.rb'
    autoload :NetworkConfiguration,                               '2017-09-01/generated/azure_mgmt_batch/models/network_configuration.rb'
    autoload :CheckNameAvailabilityParameters,                    '2017-09-01/generated/azure_mgmt_batch/models/check_name_availability_parameters.rb'
    autoload :TaskSchedulingPolicy,                               '2017-09-01/generated/azure_mgmt_batch/models/task_scheduling_policy.rb'
    autoload :CloudServiceConfiguration,                          '2017-09-01/generated/azure_mgmt_batch/models/cloud_service_configuration.rb'
    autoload :LinuxUserConfiguration,                             '2017-09-01/generated/azure_mgmt_batch/models/linux_user_configuration.rb'
    autoload :OSDisk,                                             '2017-09-01/generated/azure_mgmt_batch/models/osdisk.rb'
    autoload :UserAccount,                                        '2017-09-01/generated/azure_mgmt_batch/models/user_account.rb'
    autoload :DataDisk,                                           '2017-09-01/generated/azure_mgmt_batch/models/data_disk.rb'
    autoload :MetadataItem,                                       '2017-09-01/generated/azure_mgmt_batch/models/metadata_item.rb'
    autoload :DeploymentConfiguration,                            '2017-09-01/generated/azure_mgmt_batch/models/deployment_configuration.rb'
    autoload :ResourceFile,                                       '2017-09-01/generated/azure_mgmt_batch/models/resource_file.rb'
    autoload :BatchAccountKeys,                                   '2017-09-01/generated/azure_mgmt_batch/models/batch_account_keys.rb'
    autoload :EnvironmentSetting,                                 '2017-09-01/generated/azure_mgmt_batch/models/environment_setting.rb'
    autoload :Application,                                        '2017-09-01/generated/azure_mgmt_batch/models/application.rb'
    autoload :AutoUserSpecification,                              '2017-09-01/generated/azure_mgmt_batch/models/auto_user_specification.rb'
    autoload :Resource,                                           '2017-09-01/generated/azure_mgmt_batch/models/resource.rb'
    autoload :UserIdentity,                                       '2017-09-01/generated/azure_mgmt_batch/models/user_identity.rb'
    autoload :CheckNameAvailabilityResult,                        '2017-09-01/generated/azure_mgmt_batch/models/check_name_availability_result.rb'
    autoload :StartTask,                                          '2017-09-01/generated/azure_mgmt_batch/models/start_task.rb'
    autoload :ImageReference,                                     '2017-09-01/generated/azure_mgmt_batch/models/image_reference.rb'
    autoload :CertificateReference,                               '2017-09-01/generated/azure_mgmt_batch/models/certificate_reference.rb'
    autoload :VirtualMachineConfiguration,                        '2017-09-01/generated/azure_mgmt_batch/models/virtual_machine_configuration.rb'
    autoload :ApplicationPackageReference,                        '2017-09-01/generated/azure_mgmt_batch/models/application_package_reference.rb'
    autoload :ApplicationCreateParameters,                        '2017-09-01/generated/azure_mgmt_batch/models/application_create_parameters.rb'
    autoload :ResizeError,                                        '2017-09-01/generated/azure_mgmt_batch/models/resize_error.rb'
    autoload :CertificateBaseProperties,                          '2017-09-01/generated/azure_mgmt_batch/models/certificate_base_properties.rb'
    autoload :ResizeOperationStatus,                              '2017-09-01/generated/azure_mgmt_batch/models/resize_operation_status.rb'
    autoload :WindowsConfiguration,                               '2017-09-01/generated/azure_mgmt_batch/models/windows_configuration.rb'
    autoload :Operation,                                          '2017-09-01/generated/azure_mgmt_batch/models/operation.rb'
    autoload :ApplicationUpdateParameters,                        '2017-09-01/generated/azure_mgmt_batch/models/application_update_parameters.rb'
    autoload :ListPoolsResult,                                    '2017-09-01/generated/azure_mgmt_batch/models/list_pools_result.rb'
    autoload :BatchAccountListResult,                             '2017-09-01/generated/azure_mgmt_batch/models/batch_account_list_result.rb'
    autoload :ListCertificatesResult,                             '2017-09-01/generated/azure_mgmt_batch/models/list_certificates_result.rb'
    autoload :AutoStorageProperties,                              '2017-09-01/generated/azure_mgmt_batch/models/auto_storage_properties.rb'
    autoload :BatchAccount,                                       '2017-09-01/generated/azure_mgmt_batch/models/batch_account.rb'
    autoload :Certificate,                                        '2017-09-01/generated/azure_mgmt_batch/models/certificate.rb'
    autoload :CertificateCreateOrUpdateParameters,                '2017-09-01/generated/azure_mgmt_batch/models/certificate_create_or_update_parameters.rb'
    autoload :Pool,                                               '2017-09-01/generated/azure_mgmt_batch/models/pool.rb'
    autoload :PoolAllocationMode,                                 '2017-09-01/generated/azure_mgmt_batch/models/pool_allocation_mode.rb'
    autoload :ProvisioningState,                                  '2017-09-01/generated/azure_mgmt_batch/models/provisioning_state.rb'
    autoload :AccountKeyType,                                     '2017-09-01/generated/azure_mgmt_batch/models/account_key_type.rb'
    autoload :PackageState,                                       '2017-09-01/generated/azure_mgmt_batch/models/package_state.rb'
    autoload :CertificateFormat,                                  '2017-09-01/generated/azure_mgmt_batch/models/certificate_format.rb'
    autoload :CertificateProvisioningState,                       '2017-09-01/generated/azure_mgmt_batch/models/certificate_provisioning_state.rb'
    autoload :PoolProvisioningState,                              '2017-09-01/generated/azure_mgmt_batch/models/pool_provisioning_state.rb'
    autoload :AllocationState,                                    '2017-09-01/generated/azure_mgmt_batch/models/allocation_state.rb'
    autoload :CachingType,                                        '2017-09-01/generated/azure_mgmt_batch/models/caching_type.rb'
    autoload :StorageAccountType,                                 '2017-09-01/generated/azure_mgmt_batch/models/storage_account_type.rb'
    autoload :ComputeNodeDeallocationOption,                      '2017-09-01/generated/azure_mgmt_batch/models/compute_node_deallocation_option.rb'
    autoload :InterNodeCommunicationState,                        '2017-09-01/generated/azure_mgmt_batch/models/inter_node_communication_state.rb'
    autoload :InboundEndpointProtocol,                            '2017-09-01/generated/azure_mgmt_batch/models/inbound_endpoint_protocol.rb'
    autoload :NetworkSecurityGroupRuleAccess,                     '2017-09-01/generated/azure_mgmt_batch/models/network_security_group_rule_access.rb'
    autoload :ComputeNodeFillType,                                '2017-09-01/generated/azure_mgmt_batch/models/compute_node_fill_type.rb'
    autoload :ElevationLevel,                                     '2017-09-01/generated/azure_mgmt_batch/models/elevation_level.rb'
    autoload :AutoUserScope,                                      '2017-09-01/generated/azure_mgmt_batch/models/auto_user_scope.rb'
    autoload :CertificateStoreLocation,                           '2017-09-01/generated/azure_mgmt_batch/models/certificate_store_location.rb'
    autoload :CertificateVisibility,                              '2017-09-01/generated/azure_mgmt_batch/models/certificate_visibility.rb'
    autoload :NameAvailabilityReason,                             '2017-09-01/generated/azure_mgmt_batch/models/name_availability_reason.rb'
  end
end

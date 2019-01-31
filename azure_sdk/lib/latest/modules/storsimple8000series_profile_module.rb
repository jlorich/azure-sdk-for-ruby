# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_stor_simple8000_series'

module Azure::Profiles::Latest
  module StorSimple8000Series
    module Mgmt
      VolumeContainers = Azure::StorSimple8000Series::Mgmt::V2017_06_01::VolumeContainers
      HardwareComponentGroups = Azure::StorSimple8000Series::Mgmt::V2017_06_01::HardwareComponentGroups
      StorageAccountCredentials = Azure::StorSimple8000Series::Mgmt::V2017_06_01::StorageAccountCredentials
      Volumes = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Volumes
      Backups = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Backups
      Jobs = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Jobs
      Managers = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Managers
      Operations = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Operations
      Alerts = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Alerts
      BandwidthSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::BandwidthSettings
      CloudAppliances = Azure::StorSimple8000Series::Mgmt::V2017_06_01::CloudAppliances
      Devices = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Devices
      DeviceSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::DeviceSettings
      AccessControlRecords = Azure::StorSimple8000Series::Mgmt::V2017_06_01::AccessControlRecords
      BackupSchedules = Azure::StorSimple8000Series::Mgmt::V2017_06_01::BackupSchedules
      BackupPolicies = Azure::StorSimple8000Series::Mgmt::V2017_06_01::BackupPolicies

      module Models
        ManagerPatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerPatch
        DimensionFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DimensionFilter
        MetricAvailablity = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricAvailablity
        AvailableProviderOperationDisplay = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperationDisplay
        MetricData = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricData
        BackupPolicyList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicyList
        ChapSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ChapSettings
        SecondaryDNSSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecondaryDNSSettings
        DeviceList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceList
        MetricDefinitionList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDefinitionList
        VolumeList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeList
        MetricNameFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricNameFilter
        VmImage = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VmImage
        MetricFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricFilter
        AlertFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertFilter
        DataStatistics = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DataStatistics
        MetricList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricList
        NetworkAdapters = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkAdapters
        BandwidthSchedule = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSchedule
        Metrics = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Metrics
        AccessControlRecord = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AccessControlRecord
        NicIPv4 = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NicIPv4
        NetworkAdapterList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkAdapterList
        AlertSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSettings
        Backup = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Backup
        BackupPolicy = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicy
        BandwidthSetting = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSetting
        CloudApplianceConfiguration = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfiguration
        ConfigureDeviceRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ConfigureDeviceRequest
        ControllerPowerStateChangeRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerPowerStateChangeRequest
        Device = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Device
        EncryptionSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionSettings
        Manager = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Manager
        ManagerExtendedInfo = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerExtendedInfo
        HardwareComponentGroup = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentGroup
        SecuritySettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecuritySettings
        StorageAccountCredential = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::StorageAccountCredential
        NetworkSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkSettings
        Updates = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Updates
        VolumeContainer = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainer
        TimeSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TimeSettings
        AlertSourceType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSourceType
        Volume = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Volume
        AlertScope = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertScope
        BackupJobCreationType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupJobCreationType
        AlertStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertStatus
        AlertEmailNotificationStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertEmailNotificationStatus
        BackupPolicyCreationType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicyCreationType
        VolumeType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeType
        BackupType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupType
        ControllerPowerStateAction = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerPowerStateAction
        RecurrenceType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RecurrenceType
        ScheduleStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduleStatus
        ScheduledBackupStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduledBackupStatus
        Alert = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Alert
        ControllerStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerStatus
        DeviceConfigurationStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceConfigurationStatus
        DeviceStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceStatus
        ControllerId = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerId
        VirtualMachineApiType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VirtualMachineApiType
        AuthorizationEligibility = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthorizationEligibility
        AuthorizationStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthorizationStatus
        DeviceType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceType
        EncryptionStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionStatus
        KeyRolloverStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::KeyRolloverStatus
        TargetEligibilityStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityStatus
        InEligibilityCategory = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::InEligibilityCategory
        FeatureSupportStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureSupportStatus
        HardwareComponentStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentStatus
        ManagerType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerType
        TargetEligibilityResultCode = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityResultCode
        MetricAggregationType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricAggregationType
        ISCSIAndCloudStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ISCSIAndCloudStatus
        NetworkMode = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkMode
        Job = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Job
        NetInterfaceStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetInterfaceStatus
        JobStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobStatus
        MonitoringStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MonitoringStatus
        Resource = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Resource
        MetricUnit = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricUnit
        AuthenticationType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthenticationType
        AlertSeverity = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSeverity
        JobType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobType
        RemoteManagementModeConfiguration = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementModeConfiguration
        SslStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SslStatus
        NetInterfaceId = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetInterfaceId
        OwnerShipStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::OwnerShipStatus
        OperationStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::OperationStatus
        VolumeStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeStatus
        BackupStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupStatus
        MetricName = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricName
        BackupSchedule = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupSchedule
        MetricDimension = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDimension
        Key = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Key
        MetricDefinition = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDefinition
        DayOfWeek = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DayOfWeek
        EncryptionAlgorithm = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionAlgorithm
        Kind = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Kind
        TargetEligibilityResult = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityResult
        FailoverTarget = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverTarget
        AccessControlRecordList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AccessControlRecordList
        FailoverTargetsList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverTargetsList
        AlertSource = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSource
        Feature = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Feature
        RemoteManagementSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementSettings
        FailoverRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverRequest
        AlertList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertList
        VolumeFailoverMetadata = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeFailoverMetadata
        AsymmetricEncryptedSecret = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AsymmetricEncryptedSecret
        VolumeContainerFailoverMetadata = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainerFailoverMetadata
        AvailableProviderOperation = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperation
        FailoverSetEligibilityResult = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverSetEligibilityResult
        BackupElement = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupElement
        FailoverSet = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverSet
        BackupFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupFilter
        FailoverSetsList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverSetsList
        VolumeContainerList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainerList
        TargetEligibilityErrorMessage = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityErrorMessage
        ScheduleRecurrence = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduleRecurrence
        SymmetricEncryptedSecret = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SymmetricEncryptedSecret
        NicIPv6 = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NicIPv6
        AcsConfiguration = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AcsConfiguration
        Time = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Time
        StorageAccountCredentialList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::StorageAccountCredentialList
        AlertErrorDetails = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertErrorDetails
        BaseModel = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BaseModel
        PublicKey = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::PublicKey
        ClearAlertRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ClearAlertRequest
        FeatureFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureFilter
        CloudAppliance = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudAppliance
        FeatureList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureList
        SendTestAlertEmailRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SendTestAlertEmailRequest
        HardwareComponent = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponent
        CloudApplianceSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceSettings
        NetworkSettingsPatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkSettingsPatch
        NetworkInterfaceData0Settings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkInterfaceData0Settings
        HardwareComponentGroupList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentGroupList
        DeviceDetails = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceDetails
        RemoteManagementSettingsPatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementSettingsPatch
        JobErrorItem = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobErrorItem
        JobErrorDetails = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobErrorDetails
        DevicePatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DevicePatch
        JobStage = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobStage
        DNSSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DNSSettings
        WebproxySettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::WebproxySettings
        JobList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobList
        JobFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobFilter
        BackupList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupList
        AvailableProviderOperationList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperationList
        BackupScheduleList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupScheduleList
        ListFailoverTargetsRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ListFailoverTargetsRequest
        BandwidthSettingList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSettingList
        ManagerIntrinsicSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerIntrinsicSettings
        CloneRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloneRequest
        ManagerSku = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerSku
        CloudApplianceConfigurationList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfigurationList
        SecuritySettingsPatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecuritySettingsPatch
        ManagerList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerList
        DeviceRolloverDetails = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceRolloverDetails
      end

      class StorSimple8000SeriesManagementClass
        attr_reader :volume_containers, :hardware_component_groups, :storage_account_credentials, :volumes, :backups, :jobs, :managers, :operations, :alerts, :bandwidth_settings, :cloud_appliances, :devices, :device_settings, :access_control_records, :backup_schedules, :backup_policies, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::StorSimple8000Series::Mgmt::V2017_06_01::StorSimple8000SeriesManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @volume_containers = @client_0.volume_containers
          @hardware_component_groups = @client_0.hardware_component_groups
          @storage_account_credentials = @client_0.storage_account_credentials
          @volumes = @client_0.volumes
          @backups = @client_0.backups
          @jobs = @client_0.jobs
          @managers = @client_0.managers
          @operations = @client_0.operations
          @alerts = @client_0.alerts
          @bandwidth_settings = @client_0.bandwidth_settings
          @cloud_appliances = @client_0.cloud_appliances
          @devices = @client_0.devices
          @device_settings = @client_0.device_settings
          @access_control_records = @client_0.access_control_records
          @backup_schedules = @client_0.backup_schedules
          @backup_policies = @client_0.backup_policies

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/StorSimple8000Series/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def manager_patch
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerPatch
          end
          def dimension_filter
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DimensionFilter
          end
          def metric_availablity
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricAvailablity
          end
          def available_provider_operation_display
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperationDisplay
          end
          def metric_data
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricData
          end
          def backup_policy_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicyList
          end
          def chap_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ChapSettings
          end
          def secondary_dnssettings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecondaryDNSSettings
          end
          def device_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceList
          end
          def metric_definition_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDefinitionList
          end
          def volume_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeList
          end
          def metric_name_filter
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricNameFilter
          end
          def vm_image
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VmImage
          end
          def metric_filter
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricFilter
          end
          def alert_filter
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertFilter
          end
          def data_statistics
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DataStatistics
          end
          def metric_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricList
          end
          def network_adapters
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkAdapters
          end
          def bandwidth_schedule
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSchedule
          end
          def metrics
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Metrics
          end
          def access_control_record
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AccessControlRecord
          end
          def nic_ipv4
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NicIPv4
          end
          def network_adapter_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkAdapterList
          end
          def alert_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSettings
          end
          def backup
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Backup
          end
          def backup_policy
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicy
          end
          def bandwidth_setting
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSetting
          end
          def cloud_appliance_configuration
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfiguration
          end
          def configure_device_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ConfigureDeviceRequest
          end
          def controller_power_state_change_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerPowerStateChangeRequest
          end
          def device
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Device
          end
          def encryption_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionSettings
          end
          def manager
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Manager
          end
          def manager_extended_info
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerExtendedInfo
          end
          def hardware_component_group
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentGroup
          end
          def security_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecuritySettings
          end
          def storage_account_credential
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::StorageAccountCredential
          end
          def network_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkSettings
          end
          def updates
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Updates
          end
          def volume_container
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainer
          end
          def time_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TimeSettings
          end
          def alert_source_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSourceType
          end
          def volume
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Volume
          end
          def alert_scope
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertScope
          end
          def backup_job_creation_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupJobCreationType
          end
          def alert_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertStatus
          end
          def alert_email_notification_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertEmailNotificationStatus
          end
          def backup_policy_creation_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicyCreationType
          end
          def volume_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeType
          end
          def backup_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupType
          end
          def controller_power_state_action
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerPowerStateAction
          end
          def recurrence_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RecurrenceType
          end
          def schedule_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduleStatus
          end
          def scheduled_backup_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduledBackupStatus
          end
          def alert
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Alert
          end
          def controller_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerStatus
          end
          def device_configuration_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceConfigurationStatus
          end
          def device_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceStatus
          end
          def controller_id
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerId
          end
          def virtual_machine_api_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VirtualMachineApiType
          end
          def authorization_eligibility
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthorizationEligibility
          end
          def authorization_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthorizationStatus
          end
          def device_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceType
          end
          def encryption_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionStatus
          end
          def key_rollover_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::KeyRolloverStatus
          end
          def target_eligibility_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityStatus
          end
          def in_eligibility_category
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::InEligibilityCategory
          end
          def feature_support_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureSupportStatus
          end
          def hardware_component_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentStatus
          end
          def manager_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerType
          end
          def target_eligibility_result_code
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityResultCode
          end
          def metric_aggregation_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricAggregationType
          end
          def iscsiand_cloud_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ISCSIAndCloudStatus
          end
          def network_mode
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkMode
          end
          def job
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Job
          end
          def net_interface_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetInterfaceStatus
          end
          def job_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobStatus
          end
          def monitoring_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MonitoringStatus
          end
          def resource
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Resource
          end
          def metric_unit
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricUnit
          end
          def authentication_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthenticationType
          end
          def alert_severity
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSeverity
          end
          def job_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobType
          end
          def remote_management_mode_configuration
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementModeConfiguration
          end
          def ssl_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SslStatus
          end
          def net_interface_id
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetInterfaceId
          end
          def owner_ship_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::OwnerShipStatus
          end
          def operation_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::OperationStatus
          end
          def volume_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeStatus
          end
          def backup_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupStatus
          end
          def metric_name
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricName
          end
          def backup_schedule
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupSchedule
          end
          def metric_dimension
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDimension
          end
          def key
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Key
          end
          def metric_definition
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDefinition
          end
          def day_of_week
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DayOfWeek
          end
          def encryption_algorithm
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionAlgorithm
          end
          def kind
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Kind
          end
          def target_eligibility_result
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityResult
          end
          def failover_target
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverTarget
          end
          def access_control_record_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AccessControlRecordList
          end
          def failover_targets_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverTargetsList
          end
          def alert_source
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSource
          end
          def feature
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Feature
          end
          def remote_management_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementSettings
          end
          def failover_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverRequest
          end
          def alert_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertList
          end
          def volume_failover_metadata
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeFailoverMetadata
          end
          def asymmetric_encrypted_secret
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AsymmetricEncryptedSecret
          end
          def volume_container_failover_metadata
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainerFailoverMetadata
          end
          def available_provider_operation
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperation
          end
          def failover_set_eligibility_result
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverSetEligibilityResult
          end
          def backup_element
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupElement
          end
          def failover_set
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverSet
          end
          def backup_filter
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupFilter
          end
          def failover_sets_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverSetsList
          end
          def volume_container_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainerList
          end
          def target_eligibility_error_message
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityErrorMessage
          end
          def schedule_recurrence
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduleRecurrence
          end
          def symmetric_encrypted_secret
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SymmetricEncryptedSecret
          end
          def nic_ipv6
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NicIPv6
          end
          def acs_configuration
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AcsConfiguration
          end
          def time
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Time
          end
          def storage_account_credential_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::StorageAccountCredentialList
          end
          def alert_error_details
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertErrorDetails
          end
          def base_model
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BaseModel
          end
          def public_key
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::PublicKey
          end
          def clear_alert_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ClearAlertRequest
          end
          def feature_filter
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureFilter
          end
          def cloud_appliance
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudAppliance
          end
          def feature_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureList
          end
          def send_test_alert_email_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SendTestAlertEmailRequest
          end
          def hardware_component
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponent
          end
          def cloud_appliance_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceSettings
          end
          def network_settings_patch
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkSettingsPatch
          end
          def network_interface_data0_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkInterfaceData0Settings
          end
          def hardware_component_group_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentGroupList
          end
          def device_details
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceDetails
          end
          def remote_management_settings_patch
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementSettingsPatch
          end
          def job_error_item
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobErrorItem
          end
          def job_error_details
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobErrorDetails
          end
          def device_patch
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DevicePatch
          end
          def job_stage
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobStage
          end
          def dnssettings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DNSSettings
          end
          def webproxy_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::WebproxySettings
          end
          def job_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobList
          end
          def job_filter
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobFilter
          end
          def backup_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupList
          end
          def available_provider_operation_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperationList
          end
          def backup_schedule_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupScheduleList
          end
          def list_failover_targets_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ListFailoverTargetsRequest
          end
          def bandwidth_setting_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSettingList
          end
          def manager_intrinsic_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerIntrinsicSettings
          end
          def clone_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloneRequest
          end
          def manager_sku
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerSku
          end
          def cloud_appliance_configuration_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfigurationList
          end
          def security_settings_patch
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecuritySettingsPatch
          end
          def manager_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerList
          end
          def device_rollover_details
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceRolloverDetails
          end
        end
      end
    end
  end
end

# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_signalr'

module Azure::Signalr::Profiles::Latest
  module Mgmt
    Operations = Azure::Signalr::Mgmt::V2018_03_01_preview::Operations
    SignalR = Azure::Signalr::Mgmt::V2018_03_01_preview::SignalR
    Usages = Azure::Signalr::Mgmt::V2018_03_01_preview::Usages

    module Models
      SignalRResourceList = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRResourceList
      OperationDisplay = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::OperationDisplay
      Dimension = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::Dimension
      ServiceSpecification = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::ServiceSpecification
      SignalRUsageList = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUsageList
      Operation = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::Operation
      Resource = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::Resource
      NameAvailabilityParameters = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::NameAvailabilityParameters
      SignalRCreateOrUpdateProperties = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRCreateOrUpdateProperties
      ResourceSku = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::ResourceSku
      SignalRKeys = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRKeys
      OperationProperties = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::OperationProperties
      RegenerateKeyParameters = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::RegenerateKeyParameters
      NameAvailability = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::NameAvailability
      SignalRUsage = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUsage
      OperationList = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::OperationList
      SignalRUpdateParameters = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUpdateParameters
      MetricSpecification = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::MetricSpecification
      SignalRUsageName = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUsageName
      TrackedResource = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::TrackedResource
      SignalRResource = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRResource
      SignalRCreateParameters = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRCreateParameters
      SignalRSkuTier = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRSkuTier
      ProvisioningState = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::ProvisioningState
      KeyType = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::KeyType
    end

    #
    # SignalrManagementClass
    #
    class SignalrManagementClass
      attr_reader :operations, :signal_r, :usages, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::Signalr::Mgmt::V2018_03_01_preview::SignalRManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @signal_r = @client_0.signal_r
        @usages = @client_0.usages

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Signalr/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def signal_rresource_list
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRResourceList
      end
      def operation_display
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::OperationDisplay
      end
      def dimension
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::Dimension
      end
      def service_specification
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::ServiceSpecification
      end
      def signal_rusage_list
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUsageList
      end
      def operation
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::Operation
      end
      def resource
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::Resource
      end
      def name_availability_parameters
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::NameAvailabilityParameters
      end
      def signal_rcreate_or_update_properties
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRCreateOrUpdateProperties
      end
      def resource_sku
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::ResourceSku
      end
      def signal_rkeys
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRKeys
      end
      def operation_properties
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::OperationProperties
      end
      def regenerate_key_parameters
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::RegenerateKeyParameters
      end
      def name_availability
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::NameAvailability
      end
      def signal_rusage
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUsage
      end
      def operation_list
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::OperationList
      end
      def signal_rupdate_parameters
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUpdateParameters
      end
      def metric_specification
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::MetricSpecification
      end
      def signal_rusage_name
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUsageName
      end
      def tracked_resource
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::TrackedResource
      end
      def signal_rresource
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRResource
      end
      def signal_rcreate_parameters
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRCreateParameters
      end
      def signal_rsku_tier
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRSkuTier
      end
      def provisioning_state
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::ProvisioningState
      end
      def key_type
        Azure::Signalr::Mgmt::V2018_03_01_preview::Models::KeyType
      end
    end
  end
end

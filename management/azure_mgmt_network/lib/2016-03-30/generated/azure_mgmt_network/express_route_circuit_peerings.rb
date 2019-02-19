# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_03_30
  #
  # Network Client
  #
  class ExpressRouteCircuitPeerings
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ExpressRouteCircuitPeerings class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # The delete peering operation deletes the specified peering from the
    # ExpressRouteCircuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, circuit_name, peering_name, custom_headers = nil)
      response = delete_async(resource_group_name, circuit_name, peering_name, custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, circuit_name, peering_name, custom_headers = nil)
      # Send request
      promise = begin_delete_async(resource_group_name, circuit_name, peering_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # The GET peering operation retrieves the specified authorization from the
    # ExpressRouteCircuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ExpressRouteCircuitPeering] operation results.
    #
    def get(resource_group_name, circuit_name, peering_name, custom_headers = nil)
      response = get_async(resource_group_name, circuit_name, peering_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The GET peering operation retrieves the specified authorization from the
    # ExpressRouteCircuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, circuit_name, peering_name, custom_headers = nil)
      get_async(resource_group_name, circuit_name, peering_name, custom_headers).value!
    end

    #
    # The GET peering operation retrieves the specified authorization from the
    # ExpressRouteCircuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, circuit_name, peering_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'circuit_name is nil' if circuit_name.nil?
      fail ArgumentError, 'peering_name is nil' if peering_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteCircuits/{circuitName}/peerings/{peeringName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'circuitName' => circuit_name,'peeringName' => peering_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2016_03_30::Models::ExpressRouteCircuitPeering.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The Put Peering operation creates/updates an peering in the specified
    # ExpressRouteCircuits
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param peering_parameters [ExpressRouteCircuitPeering] Parameters supplied to
    # the create/update ExpressRouteCircuit Peering operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ExpressRouteCircuitPeering] operation results.
    #
    def create_or_update(resource_group_name, circuit_name, peering_name, peering_parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, circuit_name, peering_name, peering_parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param peering_parameters [ExpressRouteCircuitPeering] Parameters supplied to
    # the create/update ExpressRouteCircuit Peering operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, circuit_name, peering_name, peering_parameters, custom_headers = nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, circuit_name, peering_name, peering_parameters, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Network::Mgmt::V2016_03_30::Models::ExpressRouteCircuitPeering.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # The List peering operation retrieves all the peerings in an
    # ExpressRouteCircuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the circuit.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ExpressRouteCircuitPeering>] operation results.
    #
    def list(resource_group_name, circuit_name, custom_headers = nil)
      first_page = list_as_lazy(resource_group_name, circuit_name, custom_headers)
      first_page.get_all_items
    end

    #
    # The List peering operation retrieves all the peerings in an
    # ExpressRouteCircuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the circuit.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, circuit_name, custom_headers = nil)
      list_async(resource_group_name, circuit_name, custom_headers).value!
    end

    #
    # The List peering operation retrieves all the peerings in an
    # ExpressRouteCircuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the circuit.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, circuit_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'circuit_name is nil' if circuit_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteCircuits/{circuitName}/peerings'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'circuitName' => circuit_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2016_03_30::Models::ExpressRouteCircuitPeeringListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The delete peering operation deletes the specified peering from the
    # ExpressRouteCircuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, circuit_name, peering_name, custom_headers = nil)
      response = begin_delete_async(resource_group_name, circuit_name, peering_name, custom_headers).value!
      nil
    end

    #
    # The delete peering operation deletes the specified peering from the
    # ExpressRouteCircuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, circuit_name, peering_name, custom_headers = nil)
      begin_delete_async(resource_group_name, circuit_name, peering_name, custom_headers).value!
    end

    #
    # The delete peering operation deletes the specified peering from the
    # ExpressRouteCircuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, circuit_name, peering_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'circuit_name is nil' if circuit_name.nil?
      fail ArgumentError, 'peering_name is nil' if peering_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteCircuits/{circuitName}/peerings/{peeringName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'circuitName' => circuit_name,'peeringName' => peering_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # The Put Peering operation creates/updates an peering in the specified
    # ExpressRouteCircuits
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param peering_parameters [ExpressRouteCircuitPeering] Parameters supplied to
    # the create/update ExpressRouteCircuit Peering operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ExpressRouteCircuitPeering] operation results.
    #
    def begin_create_or_update(resource_group_name, circuit_name, peering_name, peering_parameters, custom_headers = nil)
      response = begin_create_or_update_async(resource_group_name, circuit_name, peering_name, peering_parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The Put Peering operation creates/updates an peering in the specified
    # ExpressRouteCircuits
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param peering_parameters [ExpressRouteCircuitPeering] Parameters supplied to
    # the create/update ExpressRouteCircuit Peering operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, circuit_name, peering_name, peering_parameters, custom_headers = nil)
      begin_create_or_update_async(resource_group_name, circuit_name, peering_name, peering_parameters, custom_headers).value!
    end

    #
    # The Put Peering operation creates/updates an peering in the specified
    # ExpressRouteCircuits
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param peering_parameters [ExpressRouteCircuitPeering] Parameters supplied to
    # the create/update ExpressRouteCircuit Peering operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, circuit_name, peering_name, peering_parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'circuit_name is nil' if circuit_name.nil?
      fail ArgumentError, 'peering_name is nil' if peering_name.nil?
      fail ArgumentError, 'peering_parameters is nil' if peering_parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::Network::Mgmt::V2016_03_30::Models::ExpressRouteCircuitPeering.mapper()
      request_content = @client.serialize(request_mapper,  peering_parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteCircuits/{circuitName}/peerings/{peeringName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'circuitName' => circuit_name,'peeringName' => peering_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2016_03_30::Models::ExpressRouteCircuitPeering.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2016_03_30::Models::ExpressRouteCircuitPeering.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The List peering operation retrieves all the peerings in an
    # ExpressRouteCircuit.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ExpressRouteCircuitPeeringListResult] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The List peering operation retrieves all the peerings in an
    # ExpressRouteCircuit.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers = nil)
      list_next_async(next_page_link, custom_headers).value!
    end

    #
    # The List peering operation retrieves all the peerings in an
    # ExpressRouteCircuit.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2016_03_30::Models::ExpressRouteCircuitPeeringListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The List peering operation retrieves all the peerings in an
    # ExpressRouteCircuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the circuit.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ExpressRouteCircuitPeeringListResult] which provide lazy access to
    # pages of the response.
    #
    def list_as_lazy(resource_group_name, circuit_name, custom_headers = nil)
      response = list_async(resource_group_name, circuit_name, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end

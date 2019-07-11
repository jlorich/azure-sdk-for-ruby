# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  #
  # Service Fabric REST Client APIs allows management of Service Fabric
  # clusters, applications and services.
  #
  class MeshGateway
    include MsRestAzure

    #
    # Creates and initializes a new instance of the MeshGateway class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ServiceFabricClientAPIs] reference to the ServiceFabricClientAPIs
    attr_reader :client

    #
    # Creates or updates a Gateway resource.
    #
    # Creates a Gateway resource with the specified name, description and
    # properties. If Gateway resource with the same name exists, then it is updated
    # with the specified description and properties. Use Gateway resource to
    # provide public connectivity to application services.
    #
    # @param gateway_resource_name [String] The identity of the gateway.
    # @param gateway_resource_description [GatewayResourceDescription] Description
    # for creating a Gateway resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [GatewayResourceDescription] operation results.
    #
    def create_or_update(gateway_resource_name, gateway_resource_description, custom_headers:nil)
      response = create_or_update_async(gateway_resource_name, gateway_resource_description, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a Gateway resource.
    #
    # Creates a Gateway resource with the specified name, description and
    # properties. If Gateway resource with the same name exists, then it is updated
    # with the specified description and properties. Use Gateway resource to
    # provide public connectivity to application services.
    #
    # @param gateway_resource_name [String] The identity of the gateway.
    # @param gateway_resource_description [GatewayResourceDescription] Description
    # for creating a Gateway resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(gateway_resource_name, gateway_resource_description, custom_headers:nil)
      create_or_update_async(gateway_resource_name, gateway_resource_description, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates a Gateway resource.
    #
    # Creates a Gateway resource with the specified name, description and
    # properties. If Gateway resource with the same name exists, then it is updated
    # with the specified description and properties. Use Gateway resource to
    # provide public connectivity to application services.
    #
    # @param gateway_resource_name [String] The identity of the gateway.
    # @param gateway_resource_description [GatewayResourceDescription] Description
    # for creating a Gateway resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(gateway_resource_name, gateway_resource_description, custom_headers:nil)
      api_version = '6.4-preview'
      fail ArgumentError, 'gateway_resource_name is nil' if gateway_resource_name.nil?
      fail ArgumentError, 'gateway_resource_description is nil' if gateway_resource_description.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ServiceFabric::V6_5_0_36::Models::GatewayResourceDescription.mapper()
      request_content = @client.serialize(request_mapper,  gateway_resource_description)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'Resources/Gateways/{gatewayResourceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'gatewayResourceName' => gateway_resource_name},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::GatewayResourceDescription.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::GatewayResourceDescription.mapper()
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
    # Gets the Gateway resource with the given name.
    #
    # Gets the information about the Gateway resource with the given name. The
    # information include the description and other properties of the Gateway.
    #
    # @param gateway_resource_name [String] The identity of the gateway.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [GatewayResourceDescription] operation results.
    #
    def get(gateway_resource_name, custom_headers:nil)
      response = get_async(gateway_resource_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the Gateway resource with the given name.
    #
    # Gets the information about the Gateway resource with the given name. The
    # information include the description and other properties of the Gateway.
    #
    # @param gateway_resource_name [String] The identity of the gateway.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(gateway_resource_name, custom_headers:nil)
      get_async(gateway_resource_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the Gateway resource with the given name.
    #
    # Gets the information about the Gateway resource with the given name. The
    # information include the description and other properties of the Gateway.
    #
    # @param gateway_resource_name [String] The identity of the gateway.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(gateway_resource_name, custom_headers:nil)
      api_version = '6.4-preview'
      fail ArgumentError, 'gateway_resource_name is nil' if gateway_resource_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Resources/Gateways/{gatewayResourceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'gatewayResourceName' => gateway_resource_name},
          query_params: {'api-version' => api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::GatewayResourceDescription.mapper()
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
    # Deletes the Gateway resource.
    #
    # Deletes the Gateway resource identified by the name.
    #
    # @param gateway_resource_name [String] The identity of the gateway.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(gateway_resource_name, custom_headers:nil)
      response = delete_async(gateway_resource_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the Gateway resource.
    #
    # Deletes the Gateway resource identified by the name.
    #
    # @param gateway_resource_name [String] The identity of the gateway.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(gateway_resource_name, custom_headers:nil)
      delete_async(gateway_resource_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes the Gateway resource.
    #
    # Deletes the Gateway resource identified by the name.
    #
    # @param gateway_resource_name [String] The identity of the gateway.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(gateway_resource_name, custom_headers:nil)
      api_version = '6.4-preview'
      fail ArgumentError, 'gateway_resource_name is nil' if gateway_resource_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Resources/Gateways/{gatewayResourceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'gatewayResourceName' => gateway_resource_name},
          query_params: {'api-version' => api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Lists all the gateway resources.
    #
    # Gets the information about all gateway resources in a given resource group.
    # The information include the description and other properties of the Gateway.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PagedGatewayResourceDescriptionList] operation results.
    #
    def list(custom_headers:nil)
      response = list_async(custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all the gateway resources.
    #
    # Gets the information about all gateway resources in a given resource group.
    # The information include the description and other properties of the Gateway.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(custom_headers:nil)
      list_async(custom_headers:custom_headers).value!
    end

    #
    # Lists all the gateway resources.
    #
    # Gets the information about all gateway resources in a given resource group.
    # The information include the description and other properties of the Gateway.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(custom_headers:nil)
      api_version = '6.4-preview'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Resources/Gateways'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          query_params: {'api-version' => api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::PagedGatewayResourceDescriptionList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end

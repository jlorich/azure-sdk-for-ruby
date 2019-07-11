# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Personalizer::V1_0
  #
  # Personalizer Service is an Azure Cognitive Service that makes it easy to
  # target content and experiences without complex pre-analysis or cleanup of
  # past data. Given a context and featurized content, the Personalizer Service
  # returns your content in a ranked list. As rewards are sent in response to
  # the ranked list, the reinforcement learning algorithm will improve the
  # model and improve performance of future rank calls.
  #
  class Events
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Events class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [PersonalizerClient] reference to the PersonalizerClient
    attr_reader :client

    #
    # Report reward to allocate to the top ranked action for the specified event.
    #
    # @param event_id [String] The event id this reward applies to.
    # @param reward [RewardRequest] The reward should be a floating point number.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def reward(event_id, reward, custom_headers:nil)
      response = reward_async(event_id, reward, custom_headers:custom_headers).value!
      nil
    end

    #
    # Report reward to allocate to the top ranked action for the specified event.
    #
    # @param event_id [String] The event id this reward applies to.
    # @param reward [RewardRequest] The reward should be a floating point number.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def reward_with_http_info(event_id, reward, custom_headers:nil)
      reward_async(event_id, reward, custom_headers:custom_headers).value!
    end

    #
    # Report reward to allocate to the top ranked action for the specified event.
    #
    # @param event_id [String] The event id this reward applies to.
    # @param reward [RewardRequest] The reward should be a floating point number.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def reward_async(event_id, reward, custom_headers:nil)
      fail ArgumentError, 'endpoint is nil' if endpoint.nil?
      fail ArgumentError, "'endpoint' should satisfy the constraint - 'MaxLength': '1024'" if !endpoint.nil? && endpoint.length > 1024
      fail ArgumentError, 'event_id is nil' if event_id.nil?
      fail ArgumentError, "'event_id' should satisfy the constraint - 'MaxLength': '256'" if !event_id.nil? && event_id.length > 256
      fail ArgumentError, 'reward is nil' if reward.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::Personalizer::V1_0::Models::RewardRequest.mapper()
      request_content = @client.serialize(request_mapper,  reward)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'events/{eventId}/reward'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'eventId' => event_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Report that the specified event was actually displayed to the user and a
    # reward should be expected for it.
    #
    # @param event_id [String] The event ID this activation applies to.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def activate(event_id, custom_headers:nil)
      response = activate_async(event_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # Report that the specified event was actually displayed to the user and a
    # reward should be expected for it.
    #
    # @param event_id [String] The event ID this activation applies to.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def activate_with_http_info(event_id, custom_headers:nil)
      activate_async(event_id, custom_headers:custom_headers).value!
    end

    #
    # Report that the specified event was actually displayed to the user and a
    # reward should be expected for it.
    #
    # @param event_id [String] The event ID this activation applies to.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def activate_async(event_id, custom_headers:nil)
      fail ArgumentError, 'endpoint is nil' if endpoint.nil?
      fail ArgumentError, "'endpoint' should satisfy the constraint - 'MaxLength': '1024'" if !endpoint.nil? && endpoint.length > 1024
      fail ArgumentError, 'event_id is nil' if event_id.nil?
      fail ArgumentError, "'event_id' should satisfy the constraint - 'MaxLength': '256'" if !event_id.nil? && event_id.length > 256


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'events/{eventId}/activate'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'eventId' => event_id},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end

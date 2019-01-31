# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  #
  # A service client - single point of access to the REST API.
  #
  class FaceClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_reader :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials1

    # @return [String] Supported Cognitive Services endpoints (protocol and
    # hostname, for example: https://westus.api.cognitive.microsoft.com).
    attr_accessor :endpoint

    # @return Subscription credentials which uniquely identify client
    # subscription.
    attr_accessor :credentials

    # @return [String] Gets or sets the preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] Gets or sets the retry timeout in seconds for Long
    # Running Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] When set to true a unique x-ms-client-request-id value
    # is generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [Face] face
    attr_reader :face

    # @return [PersonGroupPerson] person_group_person
    attr_reader :person_group_person

    # @return [PersonGroupOperations] person_group_operations
    attr_reader :person_group_operations

    # @return [FaceListOperations] face_list_operations
    attr_reader :face_list_operations

    # @return [LargePersonGroupPerson] large_person_group_person
    attr_reader :large_person_group_person

    # @return [LargePersonGroupOperations] large_person_group_operations
    attr_reader :large_person_group_operations

    # @return [LargeFaceListOperations] large_face_list_operations
    attr_reader :large_face_list_operations

    # @return [SnapshotOperations] snapshot_operations
    attr_reader :snapshot_operations

    #
    # Creates initializes a new instance of the FaceClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, options = nil)
      super(credentials, options)
      @base_url = '{Endpoint}/face/v1.0'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @face = Face.new(self)
      @person_group_person = PersonGroupPerson.new(self)
      @person_group_operations = PersonGroupOperations.new(self)
      @face_list_operations = FaceListOperations.new(self)
      @large_person_group_person = LargePersonGroupPerson.new(self)
      @large_person_group_operations = LargePersonGroupOperations.new(self)
      @large_face_list_operations = LargeFaceListOperations.new(self)
      @snapshot_operations = SnapshotOperations.new(self)
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_cognitiveservices_face'
        if defined? Azure::CognitiveServices::Face::V1_0::VERSION
          sdk_information = "#{sdk_information}/#{Azure::CognitiveServices::Face::V1_0::VERSION}"
        end
        add_user_agent_information(sdk_information)
    end
  end
end

=begin
#Polar Accesslink API

#Polar Accesslink API documentation

The version of the OpenAPI document: 3
Contact: b2bhelpdesk@polar.com
Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module PolarRb
  class ExercisesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get exercise FIT
    # FIT file for users exercise. Only Exercises uploaded to Flow in the last 30 days are available. Only exercises that have been uploaded to Flow after the user is registered with your client will be available. See [FIT sport mappings in appendix](#sport-type-mapping-in-fit-files).
    # @param exercise_id [String] Hashed exercise id.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_exercise_fit_without_transaction(exercise_id, opts = {})
      data, _status_code, _headers = get_exercise_fit_without_transaction_with_http_info(exercise_id, opts)
      data
    end

    # Get exercise FIT
    # FIT file for users exercise. Only Exercises uploaded to Flow in the last 30 days are available. Only exercises that have been uploaded to Flow after the user is registered with your client will be available. See [FIT sport mappings in appendix](#sport-type-mapping-in-fit-files).
    # @param exercise_id [String] Hashed exercise id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_exercise_fit_without_transaction_with_http_info(exercise_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExercisesApi.get_exercise_fit_without_transaction ...'
      end
      # verify the required parameter 'exercise_id' is set
      if @api_client.config.client_side_validation && exercise_id.nil?
        fail ArgumentError, "Missing the required parameter 'exercise_id' when calling ExercisesApi.get_exercise_fit_without_transaction"
      end
      # resource path
      local_var_path = '/v3/exercises/{exerciseId}/fit'.sub('{' + 'exerciseId' + '}', CGI.escape(exercise_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"ExercisesApi.get_exercise_fit_without_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExercisesApi#get_exercise_fit_without_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get exercise GPX
    # GPX file for users exercise without an Accesslink \"transaction\". Only Exercises uploaded to Flow in the last 30 days are available. Only exercises that have been uploaded to Flow after the user is registered with your client will be available.
    # @param exercise_id [String] Hashed exercise id.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_exercise_gpx_without_transaction(exercise_id, opts = {})
      data, _status_code, _headers = get_exercise_gpx_without_transaction_with_http_info(exercise_id, opts)
      data
    end

    # Get exercise GPX
    # GPX file for users exercise without an Accesslink \&quot;transaction\&quot;. Only Exercises uploaded to Flow in the last 30 days are available. Only exercises that have been uploaded to Flow after the user is registered with your client will be available.
    # @param exercise_id [String] Hashed exercise id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_exercise_gpx_without_transaction_with_http_info(exercise_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExercisesApi.get_exercise_gpx_without_transaction ...'
      end
      # verify the required parameter 'exercise_id' is set
      if @api_client.config.client_side_validation && exercise_id.nil?
        fail ArgumentError, "Missing the required parameter 'exercise_id' when calling ExercisesApi.get_exercise_gpx_without_transaction"
      end
      # resource path
      local_var_path = '/v3/exercises/{exerciseId}/gpx'.sub('{' + 'exerciseId' + '}', CGI.escape(exercise_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/gpx+xml']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"ExercisesApi.get_exercise_gpx_without_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExercisesApi#get_exercise_gpx_without_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get exercise TCX
    # TCX file for users exercise without an Accesslink \"transaction\". Only Exercises uploaded to Flow in the last 30 days are available. Only exercises that have been uploaded to Flow after the user is registered with your client will be available.
    # @param exercise_id [String] Hashed exercise id.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_exercise_tcx_without_transaction(exercise_id, opts = {})
      data, _status_code, _headers = get_exercise_tcx_without_transaction_with_http_info(exercise_id, opts)
      data
    end

    # Get exercise TCX
    # TCX file for users exercise without an Accesslink \&quot;transaction\&quot;. Only Exercises uploaded to Flow in the last 30 days are available. Only exercises that have been uploaded to Flow after the user is registered with your client will be available.
    # @param exercise_id [String] Hashed exercise id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_exercise_tcx_without_transaction_with_http_info(exercise_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExercisesApi.get_exercise_tcx_without_transaction ...'
      end
      # verify the required parameter 'exercise_id' is set
      if @api_client.config.client_side_validation && exercise_id.nil?
        fail ArgumentError, "Missing the required parameter 'exercise_id' when calling ExercisesApi.get_exercise_tcx_without_transaction"
      end
      # resource path
      local_var_path = '/v3/exercises/{exerciseId}/tcx'.sub('{' + 'exerciseId' + '}', CGI.escape(exercise_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.garmin.tcx+xml']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"ExercisesApi.get_exercise_tcx_without_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExercisesApi#get_exercise_tcx_without_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get exercise
    # Get users exercise using hashed id. Only Exercises uploaded to Flow in the last 30 days are available. Only exercises that have been uploaded to Flow after the user is registered with your client will be available. Use samples and zones query parameters to return optional samples and zone information of the exercise.
    # @param exercise_id [String] Hashed exercise id.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :samples Return all sample data for this exercise.
    # @option opts [Boolean] :zones Return all zones data for this exercise.
    # @return [ExerciseHashId]
    def get_exercise_without_transaction(exercise_id, opts = {})
      data, _status_code, _headers = get_exercise_without_transaction_with_http_info(exercise_id, opts)
      data
    end

    # Get exercise
    # Get users exercise using hashed id. Only Exercises uploaded to Flow in the last 30 days are available. Only exercises that have been uploaded to Flow after the user is registered with your client will be available. Use samples and zones query parameters to return optional samples and zone information of the exercise.
    # @param exercise_id [String] Hashed exercise id.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :samples Return all sample data for this exercise.
    # @option opts [Boolean] :zones Return all zones data for this exercise.
    # @return [Array<(ExerciseHashId, Integer, Hash)>] ExerciseHashId data, response status code and response headers
    def get_exercise_without_transaction_with_http_info(exercise_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExercisesApi.get_exercise_without_transaction ...'
      end
      # verify the required parameter 'exercise_id' is set
      if @api_client.config.client_side_validation && exercise_id.nil?
        fail ArgumentError, "Missing the required parameter 'exercise_id' when calling ExercisesApi.get_exercise_without_transaction"
      end
      # resource path
      local_var_path = '/v3/exercises/{exerciseId}'.sub('{' + 'exerciseId' + '}', CGI.escape(exercise_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'samples'] = opts[:'samples'] if !opts[:'samples'].nil?
      query_params[:'zones'] = opts[:'zones'] if !opts[:'zones'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ExerciseHashId'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"ExercisesApi.get_exercise_without_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExercisesApi#get_exercise_without_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List exercises
    # List users exercises available in Accesslink. Only Exercises uploaded to Flow in the last 30 days are returned. Only exercises that have been uploaded to Flow after the user is registered with your client will be returned. Use samples and zones query parameters to return optional samples and zone information of the exercises. Training Load Pro data will be included in the exercise object if the exercise is recorded with a specific wrist unit model,  please check [compatible devices](https://www.polar.com/en/smart-coaching/training-load-pro) for more information.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :samples Return all sample data for this exercise.
    # @option opts [Boolean] :zones Return all zones data for this exercise.
    # @return [Array<ExerciseHashId>]
    def list_exercises_without_transaction(opts = {})
      data, _status_code, _headers = list_exercises_without_transaction_with_http_info(opts)
      data
    end

    # List exercises
    # List users exercises available in Accesslink. Only Exercises uploaded to Flow in the last 30 days are returned. Only exercises that have been uploaded to Flow after the user is registered with your client will be returned. Use samples and zones query parameters to return optional samples and zone information of the exercises. Training Load Pro data will be included in the exercise object if the exercise is recorded with a specific wrist unit model,  please check [compatible devices](https://www.polar.com/en/smart-coaching/training-load-pro) for more information.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :samples Return all sample data for this exercise.
    # @option opts [Boolean] :zones Return all zones data for this exercise.
    # @return [Array<(Array<ExerciseHashId>, Integer, Hash)>] Array<ExerciseHashId> data, response status code and response headers
    def list_exercises_without_transaction_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExercisesApi.list_exercises_without_transaction ...'
      end
      # resource path
      local_var_path = '/v3/exercises'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'samples'] = opts[:'samples'] if !opts[:'samples'].nil?
      query_params[:'zones'] = opts[:'zones'] if !opts[:'zones'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ExerciseHashId>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"ExercisesApi.list_exercises_without_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExercisesApi#list_exercises_without_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

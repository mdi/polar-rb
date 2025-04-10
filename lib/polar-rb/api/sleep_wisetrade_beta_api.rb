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
  class SleepWisetradeBetaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Alertness period data (date range)
    # Get user's alertness period data for given date range. Maximum date range between from and to cannot be more than 28 days. <a href=\"https://support.polar.com/en/polar-sleepwise\"> Supported devices </a>
    # @param from [Date] Inclusive start date of range as ISO-8601 date string, example: \&quot;2022-01-01\&quot;
    # @param to [Date] Inclusive end date of range as ISO-8601 date string, example: \&quot;2022-01-28\&quot;
    # @param [Hash] opts the optional parameters
    # @return [Array<Alertness>]
    def v3_users_sleepwise_alertness_date_get(from, to, opts = {})
      data, _status_code, _headers = v3_users_sleepwise_alertness_date_get_with_http_info(from, to, opts)
      data
    end

    # Alertness period data (date range)
    # Get user&#39;s alertness period data for given date range. Maximum date range between from and to cannot be more than 28 days. &lt;a href&#x3D;\&quot;https://support.polar.com/en/polar-sleepwise\&quot;&gt; Supported devices &lt;/a&gt;
    # @param from [Date] Inclusive start date of range as ISO-8601 date string, example: \&quot;2022-01-01\&quot;
    # @param to [Date] Inclusive end date of range as ISO-8601 date string, example: \&quot;2022-01-28\&quot;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Alertness>, Integer, Hash)>] Array<Alertness> data, response status code and response headers
    def v3_users_sleepwise_alertness_date_get_with_http_info(from, to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SleepWisetradeBetaApi.v3_users_sleepwise_alertness_date_get ...'
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling SleepWisetradeBetaApi.v3_users_sleepwise_alertness_date_get"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling SleepWisetradeBetaApi.v3_users_sleepwise_alertness_date_get"
      end
      # resource path
      local_var_path = '/v3/users/sleepwise/alertness/date'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = from
      query_params[:'to'] = to

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Alertness>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"SleepWisetradeBetaApi.v3_users_sleepwise_alertness_date_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SleepWisetradeBetaApi#v3_users_sleepwise_alertness_date_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Alertness period data (last 28 days)
    # Get user's alertness period data for the last 28 days. <a href=\"https://support.polar.com/en/polar-sleepwise\"> Supported devices </a>
    # @param [Hash] opts the optional parameters
    # @return [Array<Alertness>]
    def v3_users_sleepwise_alertness_get(opts = {})
      data, _status_code, _headers = v3_users_sleepwise_alertness_get_with_http_info(opts)
      data
    end

    # Alertness period data (last 28 days)
    # Get user&#39;s alertness period data for the last 28 days. &lt;a href&#x3D;\&quot;https://support.polar.com/en/polar-sleepwise\&quot;&gt; Supported devices &lt;/a&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Alertness>, Integer, Hash)>] Array<Alertness> data, response status code and response headers
    def v3_users_sleepwise_alertness_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SleepWisetradeBetaApi.v3_users_sleepwise_alertness_get ...'
      end
      # resource path
      local_var_path = '/v3/users/sleepwise/alertness'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Alertness>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"SleepWisetradeBetaApi.v3_users_sleepwise_alertness_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SleepWisetradeBetaApi#v3_users_sleepwise_alertness_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Circadian bedtime period data (date range)
    # Get user's circadian bedtime period data for given date range. Maximum date range between from and to cannot be more than 28 days. <a href=\"https://support.polar.com/en/polar-sleepwise\"> Supported devices </a>
    # @param from [Date] Inclusive start date of range as ISO-8601 date string, example: \&quot;2022-01-01\&quot;
    # @param to [Date] Inclusive end date of range as ISO-8601 date string, example: \&quot;2022-01-28\&quot;
    # @param [Hash] opts the optional parameters
    # @return [Array<CircadianBedtime>]
    def v3_users_sleepwise_circadian_bedtime_date_get(from, to, opts = {})
      data, _status_code, _headers = v3_users_sleepwise_circadian_bedtime_date_get_with_http_info(from, to, opts)
      data
    end

    # Circadian bedtime period data (date range)
    # Get user&#39;s circadian bedtime period data for given date range. Maximum date range between from and to cannot be more than 28 days. &lt;a href&#x3D;\&quot;https://support.polar.com/en/polar-sleepwise\&quot;&gt; Supported devices &lt;/a&gt;
    # @param from [Date] Inclusive start date of range as ISO-8601 date string, example: \&quot;2022-01-01\&quot;
    # @param to [Date] Inclusive end date of range as ISO-8601 date string, example: \&quot;2022-01-28\&quot;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<CircadianBedtime>, Integer, Hash)>] Array<CircadianBedtime> data, response status code and response headers
    def v3_users_sleepwise_circadian_bedtime_date_get_with_http_info(from, to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SleepWisetradeBetaApi.v3_users_sleepwise_circadian_bedtime_date_get ...'
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling SleepWisetradeBetaApi.v3_users_sleepwise_circadian_bedtime_date_get"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling SleepWisetradeBetaApi.v3_users_sleepwise_circadian_bedtime_date_get"
      end
      # resource path
      local_var_path = '/v3/users/sleepwise/circadian-bedtime/date'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = from
      query_params[:'to'] = to

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<CircadianBedtime>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"SleepWisetradeBetaApi.v3_users_sleepwise_circadian_bedtime_date_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SleepWisetradeBetaApi#v3_users_sleepwise_circadian_bedtime_date_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Circadian bedtime period data (last 28 days)
    # Get user's circadian bedtime period data for the last 28 days. <a href=\"https://support.polar.com/en/polar-sleepwise\"> Supported devices </a>
    # @param [Hash] opts the optional parameters
    # @return [Array<CircadianBedtime>]
    def v3_users_sleepwise_circadian_bedtime_get(opts = {})
      data, _status_code, _headers = v3_users_sleepwise_circadian_bedtime_get_with_http_info(opts)
      data
    end

    # Circadian bedtime period data (last 28 days)
    # Get user&#39;s circadian bedtime period data for the last 28 days. &lt;a href&#x3D;\&quot;https://support.polar.com/en/polar-sleepwise\&quot;&gt; Supported devices &lt;/a&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<CircadianBedtime>, Integer, Hash)>] Array<CircadianBedtime> data, response status code and response headers
    def v3_users_sleepwise_circadian_bedtime_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SleepWisetradeBetaApi.v3_users_sleepwise_circadian_bedtime_get ...'
      end
      # resource path
      local_var_path = '/v3/users/sleepwise/circadian-bedtime'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<CircadianBedtime>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"SleepWisetradeBetaApi.v3_users_sleepwise_circadian_bedtime_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SleepWisetradeBetaApi#v3_users_sleepwise_circadian_bedtime_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

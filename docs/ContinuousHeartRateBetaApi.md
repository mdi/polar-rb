# PolarRb::ContinuousHeartRateBetaApi

All URIs are relative to *https://www.polaraccesslink.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v3_users_continuous_heart_rate_date_get**](ContinuousHeartRateBetaApi.md#v3_users_continuous_heart_rate_date_get) | **GET** /v3/users/continuous-heart-rate/{date} | Get Continuous Heart rate samples |
| [**v3_users_continuous_heart_rate_get**](ContinuousHeartRateBetaApi.md#v3_users_continuous_heart_rate_get) | **GET** /v3/users/continuous-heart-rate | Get Continuous Heart rate samples with range |


## v3_users_continuous_heart_rate_date_get

> <ContinuousHeartrate> v3_users_continuous_heart_rate_date_get(date)

Get Continuous Heart rate samples

Get users continuous heart rate values for given date. <a href=\"https://support.polar.com/en/support/the_what_and_how_of_polars_continuous_heart_rate\"> Supported devices </a>

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::ContinuousHeartRateBetaApi.new
date = Date.parse('2013-10-20') # Date | Date of Continuous Heart Rate as ISO-8601 date string, example: \"2022-01-01\"

begin
  # Get Continuous Heart rate samples
  result = api_instance.v3_users_continuous_heart_rate_date_get(date)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling ContinuousHeartRateBetaApi->v3_users_continuous_heart_rate_date_get: #{e}"
end
```

#### Using the v3_users_continuous_heart_rate_date_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContinuousHeartrate>, Integer, Hash)> v3_users_continuous_heart_rate_date_get_with_http_info(date)

```ruby
begin
  # Get Continuous Heart rate samples
  data, status_code, headers = api_instance.v3_users_continuous_heart_rate_date_get_with_http_info(date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContinuousHeartrate>
rescue PolarRb::ApiError => e
  puts "Error when calling ContinuousHeartRateBetaApi->v3_users_continuous_heart_rate_date_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date of Continuous Heart Rate as ISO-8601 date string, example: \&quot;2022-01-01\&quot; |  |

### Return type

[**ContinuousHeartrate**](ContinuousHeartrate.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v3_users_continuous_heart_rate_get

> <ContinuousHeartrate> v3_users_continuous_heart_rate_get(from, to)

Get Continuous Heart rate samples with range

Get users continuous heart rate values for given date range. <a href=\"https://support.polar.com/en/support/the_what_and_how_of_polars_continuous_heart_rate\"> Supported devices </a>

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::ContinuousHeartRateBetaApi.new
from = Date.parse('2013-10-20') # Date | Inclusive start date of range as ISO-8601 date string, example: \"2022-01-01\"
to = Date.parse('2013-10-20') # Date | Inclusive end date of range as ISO-8601 date string, example: \"2022-01-28\"

begin
  # Get Continuous Heart rate samples with range
  result = api_instance.v3_users_continuous_heart_rate_get(from, to)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling ContinuousHeartRateBetaApi->v3_users_continuous_heart_rate_get: #{e}"
end
```

#### Using the v3_users_continuous_heart_rate_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContinuousHeartrate>, Integer, Hash)> v3_users_continuous_heart_rate_get_with_http_info(from, to)

```ruby
begin
  # Get Continuous Heart rate samples with range
  data, status_code, headers = api_instance.v3_users_continuous_heart_rate_get_with_http_info(from, to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContinuousHeartrate>
rescue PolarRb::ApiError => e
  puts "Error when calling ContinuousHeartRateBetaApi->v3_users_continuous_heart_rate_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Date** | Inclusive start date of range as ISO-8601 date string, example: \&quot;2022-01-01\&quot; |  |
| **to** | **Date** | Inclusive end date of range as ISO-8601 date string, example: \&quot;2022-01-28\&quot; |  |

### Return type

[**ContinuousHeartrate**](ContinuousHeartrate.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


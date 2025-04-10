# PolarRb::SleepWisetradeBetaApi

All URIs are relative to *https://www.polaraccesslink.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v3_users_sleepwise_alertness_date_get**](SleepWisetradeBetaApi.md#v3_users_sleepwise_alertness_date_get) | **GET** /v3/users/sleepwise/alertness/date | Alertness period data (date range) |
| [**v3_users_sleepwise_alertness_get**](SleepWisetradeBetaApi.md#v3_users_sleepwise_alertness_get) | **GET** /v3/users/sleepwise/alertness | Alertness period data (last 28 days) |
| [**v3_users_sleepwise_circadian_bedtime_date_get**](SleepWisetradeBetaApi.md#v3_users_sleepwise_circadian_bedtime_date_get) | **GET** /v3/users/sleepwise/circadian-bedtime/date | Circadian bedtime period data (date range) |
| [**v3_users_sleepwise_circadian_bedtime_get**](SleepWisetradeBetaApi.md#v3_users_sleepwise_circadian_bedtime_get) | **GET** /v3/users/sleepwise/circadian-bedtime | Circadian bedtime period data (last 28 days) |


## v3_users_sleepwise_alertness_date_get

> <Array<Alertness>> v3_users_sleepwise_alertness_date_get(from, to)

Alertness period data (date range)

Get user's alertness period data for given date range. Maximum date range between from and to cannot be more than 28 days. <a href=\"https://support.polar.com/en/polar-sleepwise\"> Supported devices </a>

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::SleepWisetradeBetaApi.new
from = Date.parse('2013-10-20') # Date | Inclusive start date of range as ISO-8601 date string, example: \"2022-01-01\"
to = Date.parse('2013-10-20') # Date | Inclusive end date of range as ISO-8601 date string, example: \"2022-01-28\"

begin
  # Alertness period data (date range)
  result = api_instance.v3_users_sleepwise_alertness_date_get(from, to)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling SleepWisetradeBetaApi->v3_users_sleepwise_alertness_date_get: #{e}"
end
```

#### Using the v3_users_sleepwise_alertness_date_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Alertness>>, Integer, Hash)> v3_users_sleepwise_alertness_date_get_with_http_info(from, to)

```ruby
begin
  # Alertness period data (date range)
  data, status_code, headers = api_instance.v3_users_sleepwise_alertness_date_get_with_http_info(from, to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Alertness>>
rescue PolarRb::ApiError => e
  puts "Error when calling SleepWisetradeBetaApi->v3_users_sleepwise_alertness_date_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Date** | Inclusive start date of range as ISO-8601 date string, example: \&quot;2022-01-01\&quot; |  |
| **to** | **Date** | Inclusive end date of range as ISO-8601 date string, example: \&quot;2022-01-28\&quot; |  |

### Return type

[**Array&lt;Alertness&gt;**](Alertness.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v3_users_sleepwise_alertness_get

> <Array<Alertness>> v3_users_sleepwise_alertness_get

Alertness period data (last 28 days)

Get user's alertness period data for the last 28 days. <a href=\"https://support.polar.com/en/polar-sleepwise\"> Supported devices </a>

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::SleepWisetradeBetaApi.new

begin
  # Alertness period data (last 28 days)
  result = api_instance.v3_users_sleepwise_alertness_get
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling SleepWisetradeBetaApi->v3_users_sleepwise_alertness_get: #{e}"
end
```

#### Using the v3_users_sleepwise_alertness_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Alertness>>, Integer, Hash)> v3_users_sleepwise_alertness_get_with_http_info

```ruby
begin
  # Alertness period data (last 28 days)
  data, status_code, headers = api_instance.v3_users_sleepwise_alertness_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Alertness>>
rescue PolarRb::ApiError => e
  puts "Error when calling SleepWisetradeBetaApi->v3_users_sleepwise_alertness_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Alertness&gt;**](Alertness.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v3_users_sleepwise_circadian_bedtime_date_get

> <Array<CircadianBedtime>> v3_users_sleepwise_circadian_bedtime_date_get(from, to)

Circadian bedtime period data (date range)

Get user's circadian bedtime period data for given date range. Maximum date range between from and to cannot be more than 28 days. <a href=\"https://support.polar.com/en/polar-sleepwise\"> Supported devices </a>

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::SleepWisetradeBetaApi.new
from = Date.parse('2013-10-20') # Date | Inclusive start date of range as ISO-8601 date string, example: \"2022-01-01\"
to = Date.parse('2013-10-20') # Date | Inclusive end date of range as ISO-8601 date string, example: \"2022-01-28\"

begin
  # Circadian bedtime period data (date range)
  result = api_instance.v3_users_sleepwise_circadian_bedtime_date_get(from, to)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling SleepWisetradeBetaApi->v3_users_sleepwise_circadian_bedtime_date_get: #{e}"
end
```

#### Using the v3_users_sleepwise_circadian_bedtime_date_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CircadianBedtime>>, Integer, Hash)> v3_users_sleepwise_circadian_bedtime_date_get_with_http_info(from, to)

```ruby
begin
  # Circadian bedtime period data (date range)
  data, status_code, headers = api_instance.v3_users_sleepwise_circadian_bedtime_date_get_with_http_info(from, to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CircadianBedtime>>
rescue PolarRb::ApiError => e
  puts "Error when calling SleepWisetradeBetaApi->v3_users_sleepwise_circadian_bedtime_date_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Date** | Inclusive start date of range as ISO-8601 date string, example: \&quot;2022-01-01\&quot; |  |
| **to** | **Date** | Inclusive end date of range as ISO-8601 date string, example: \&quot;2022-01-28\&quot; |  |

### Return type

[**Array&lt;CircadianBedtime&gt;**](CircadianBedtime.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v3_users_sleepwise_circadian_bedtime_get

> <Array<CircadianBedtime>> v3_users_sleepwise_circadian_bedtime_get

Circadian bedtime period data (last 28 days)

Get user's circadian bedtime period data for the last 28 days. <a href=\"https://support.polar.com/en/polar-sleepwise\"> Supported devices </a>

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::SleepWisetradeBetaApi.new

begin
  # Circadian bedtime period data (last 28 days)
  result = api_instance.v3_users_sleepwise_circadian_bedtime_get
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling SleepWisetradeBetaApi->v3_users_sleepwise_circadian_bedtime_get: #{e}"
end
```

#### Using the v3_users_sleepwise_circadian_bedtime_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CircadianBedtime>>, Integer, Hash)> v3_users_sleepwise_circadian_bedtime_get_with_http_info

```ruby
begin
  # Circadian bedtime period data (last 28 days)
  data, status_code, headers = api_instance.v3_users_sleepwise_circadian_bedtime_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CircadianBedtime>>
rescue PolarRb::ApiError => e
  puts "Error when calling SleepWisetradeBetaApi->v3_users_sleepwise_circadian_bedtime_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CircadianBedtime&gt;**](CircadianBedtime.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


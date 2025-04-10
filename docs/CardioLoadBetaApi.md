# PolarRb::CardioLoadBetaApi

All URIs are relative to *https://www.polaraccesslink.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v3_users_cardio_load_date_get**](CardioLoadBetaApi.md#v3_users_cardio_load_date_get) | **GET** /v3/users/cardio-load/{date} | Get cardio load by date |
| [**v3_users_cardio_load_date_get_0**](CardioLoadBetaApi.md#v3_users_cardio_load_date_get_0) | **GET** /v3/users/cardio-load/date | Get cardio load by date range |
| [**v3_users_cardio_load_get**](CardioLoadBetaApi.md#v3_users_cardio_load_get) | **GET** /v3/users/cardio-load/ | List cardio loads |
| [**v3_users_cardio_load_period_days_days_get**](CardioLoadBetaApi.md#v3_users_cardio_load_period_days_days_get) | **GET** /v3/users/cardio-load/period/days/{days} | Get historical data by days |
| [**v3_users_cardio_load_period_months_months_get**](CardioLoadBetaApi.md#v3_users_cardio_load_period_months_months_get) | **GET** /v3/users/cardio-load/period/months/{months} | Get historical data by months |


## v3_users_cardio_load_date_get

> <Array<CardioLoad>> v3_users_cardio_load_date_get(date)

Get cardio load by date

Returns cardio load data for selected date.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::CardioLoadBetaApi.new
date = Date.parse('2013-10-20') # Date | Inclusive start date of range as ISO-8601 date string, example: \"2022-01-01\"

begin
  # Get cardio load by date
  result = api_instance.v3_users_cardio_load_date_get(date)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling CardioLoadBetaApi->v3_users_cardio_load_date_get: #{e}"
end
```

#### Using the v3_users_cardio_load_date_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CardioLoad>>, Integer, Hash)> v3_users_cardio_load_date_get_with_http_info(date)

```ruby
begin
  # Get cardio load by date
  data, status_code, headers = api_instance.v3_users_cardio_load_date_get_with_http_info(date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CardioLoad>>
rescue PolarRb::ApiError => e
  puts "Error when calling CardioLoadBetaApi->v3_users_cardio_load_date_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Inclusive start date of range as ISO-8601 date string, example: \&quot;2022-01-01\&quot; |  |

### Return type

[**Array&lt;CardioLoad&gt;**](CardioLoad.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v3_users_cardio_load_date_get_0

> <Array<CardioLoad>> v3_users_cardio_load_date_get_0(from, to)

Get cardio load by date range

Returns cardio load data for selected date range.  The response list contains cardio load objects for every day between range even if the cardio load values cannot be calculated, in this case the cardio load status is represented as LOAD_STATUS_NOT_AVAILABLE.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::CardioLoadBetaApi.new
from = Date.parse('2013-10-20') # Date | Inclusive as ISO-8601 date string, example: \"2022-01-01\"
to = Date.parse('2013-10-20') # Date | Inclusive as ISO-8601 date string, example: \"2022-01-01\"

begin
  # Get cardio load by date range
  result = api_instance.v3_users_cardio_load_date_get_0(from, to)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling CardioLoadBetaApi->v3_users_cardio_load_date_get_0: #{e}"
end
```

#### Using the v3_users_cardio_load_date_get_0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CardioLoad>>, Integer, Hash)> v3_users_cardio_load_date_get_0_with_http_info(from, to)

```ruby
begin
  # Get cardio load by date range
  data, status_code, headers = api_instance.v3_users_cardio_load_date_get_0_with_http_info(from, to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CardioLoad>>
rescue PolarRb::ApiError => e
  puts "Error when calling CardioLoadBetaApi->v3_users_cardio_load_date_get_0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Date** | Inclusive as ISO-8601 date string, example: \&quot;2022-01-01\&quot; |  |
| **to** | **Date** | Inclusive as ISO-8601 date string, example: \&quot;2022-01-01\&quot; |  |

### Return type

[**Array&lt;CardioLoad&gt;**](CardioLoad.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v3_users_cardio_load_get

> <Array<CardioLoad>> v3_users_cardio_load_get

List cardio loads

Returns cardio load data for the last 28 days.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::CardioLoadBetaApi.new

begin
  # List cardio loads
  result = api_instance.v3_users_cardio_load_get
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling CardioLoadBetaApi->v3_users_cardio_load_get: #{e}"
end
```

#### Using the v3_users_cardio_load_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CardioLoad>>, Integer, Hash)> v3_users_cardio_load_get_with_http_info

```ruby
begin
  # List cardio loads
  data, status_code, headers = api_instance.v3_users_cardio_load_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CardioLoad>>
rescue PolarRb::ApiError => e
  puts "Error when calling CardioLoadBetaApi->v3_users_cardio_load_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CardioLoad&gt;**](CardioLoad.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v3_users_cardio_load_period_days_days_get

> <Array<CardioLoad>> v3_users_cardio_load_period_days_days_get(days)

Get historical data by days

Returns historical cardio load data for selected period of days counting from current date.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::CardioLoadBetaApi.new
days = 56 # Integer | Period of days.

begin
  # Get historical data by days
  result = api_instance.v3_users_cardio_load_period_days_days_get(days)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling CardioLoadBetaApi->v3_users_cardio_load_period_days_days_get: #{e}"
end
```

#### Using the v3_users_cardio_load_period_days_days_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CardioLoad>>, Integer, Hash)> v3_users_cardio_load_period_days_days_get_with_http_info(days)

```ruby
begin
  # Get historical data by days
  data, status_code, headers = api_instance.v3_users_cardio_load_period_days_days_get_with_http_info(days)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CardioLoad>>
rescue PolarRb::ApiError => e
  puts "Error when calling CardioLoadBetaApi->v3_users_cardio_load_period_days_days_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Integer** | Period of days. |  |

### Return type

[**Array&lt;CardioLoad&gt;**](CardioLoad.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v3_users_cardio_load_period_months_months_get

> <Array<CardioLoad>> v3_users_cardio_load_period_months_months_get(months)

Get historical data by months

Returns historical cardio load data for selected period of months counting from current date.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::CardioLoadBetaApi.new
months = 56 # Integer | Period of months.

begin
  # Get historical data by months
  result = api_instance.v3_users_cardio_load_period_months_months_get(months)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling CardioLoadBetaApi->v3_users_cardio_load_period_months_months_get: #{e}"
end
```

#### Using the v3_users_cardio_load_period_months_months_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CardioLoad>>, Integer, Hash)> v3_users_cardio_load_period_months_months_get_with_http_info(months)

```ruby
begin
  # Get historical data by months
  data, status_code, headers = api_instance.v3_users_cardio_load_period_months_months_get_with_http_info(months)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CardioLoad>>
rescue PolarRb::ApiError => e
  puts "Error when calling CardioLoadBetaApi->v3_users_cardio_load_period_months_months_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **months** | **Integer** | Period of months. |  |

### Return type

[**Array&lt;CardioLoad&gt;**](CardioLoad.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


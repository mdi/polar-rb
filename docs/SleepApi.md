# PolarRb::SleepApi

All URIs are relative to *https://www.polaraccesslink.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_nights**](SleepApi.md#list_nights) | **GET** /v3/users/sleep | List nights |
| [**v3_users_sleep_available_get**](SleepApi.md#v3_users_sleep_available_get) | **GET** /v3/users/sleep/available | Get available sleep times |
| [**v3_users_sleep_date_get**](SleepApi.md#v3_users_sleep_date_get) | **GET** /v3/users/sleep/{date} | Get Sleep |


## list_nights

> <Nights> list_nights

List nights

List sleep data of user for the last 28 days.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::SleepApi.new

begin
  # List nights
  result = api_instance.list_nights
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling SleepApi->list_nights: #{e}"
end
```

#### Using the list_nights_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nights>, Integer, Hash)> list_nights_with_http_info

```ruby
begin
  # List nights
  data, status_code, headers = api_instance.list_nights_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nights>
rescue PolarRb::ApiError => e
  puts "Error when calling SleepApi->list_nights_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Nights**](Nights.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v3_users_sleep_available_get

> <AvailableSleeps> v3_users_sleep_available_get

Get available sleep times

Get the dates with sleep start and end times, where user has sleep data available in the last 28 days.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::SleepApi.new

begin
  # Get available sleep times
  result = api_instance.v3_users_sleep_available_get
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling SleepApi->v3_users_sleep_available_get: #{e}"
end
```

#### Using the v3_users_sleep_available_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailableSleeps>, Integer, Hash)> v3_users_sleep_available_get_with_http_info

```ruby
begin
  # Get available sleep times
  data, status_code, headers = api_instance.v3_users_sleep_available_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailableSleeps>
rescue PolarRb::ApiError => e
  puts "Error when calling SleepApi->v3_users_sleep_available_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AvailableSleeps**](AvailableSleeps.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v3_users_sleep_date_get

> <Sleep> v3_users_sleep_date_get(date)

Get Sleep

Get Users sleep data for given date.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::SleepApi.new
date = 'date_example' # String | Date of sleep as ISO-8601 date string, example: \"2020-01-01\"

begin
  # Get Sleep
  result = api_instance.v3_users_sleep_date_get(date)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling SleepApi->v3_users_sleep_date_get: #{e}"
end
```

#### Using the v3_users_sleep_date_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Sleep>, Integer, Hash)> v3_users_sleep_date_get_with_http_info(date)

```ruby
begin
  # Get Sleep
  data, status_code, headers = api_instance.v3_users_sleep_date_get_with_http_info(date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Sleep>
rescue PolarRb::ApiError => e
  puts "Error when calling SleepApi->v3_users_sleep_date_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | Date of sleep as ISO-8601 date string, example: \&quot;2020-01-01\&quot; |  |

### Return type

[**Sleep**](Sleep.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


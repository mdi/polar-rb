# PolarRb::NightlyRechargeApi

All URIs are relative to *https://www.polaraccesslink.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_nightly_recharge**](NightlyRechargeApi.md#list_nightly_recharge) | **GET** /v3/users/nightly-recharge | List Nightly Recharges |
| [**v3_users_nightly_recharge_date_get**](NightlyRechargeApi.md#v3_users_nightly_recharge_date_get) | **GET** /v3/users/nightly-recharge/{date} | Get Nightly Recharge |


## list_nightly_recharge

> <Recharges> list_nightly_recharge

List Nightly Recharges

List Nightly Recharge data of user for the last 28 days.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::NightlyRechargeApi.new

begin
  # List Nightly Recharges
  result = api_instance.list_nightly_recharge
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling NightlyRechargeApi->list_nightly_recharge: #{e}"
end
```

#### Using the list_nightly_recharge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Recharges>, Integer, Hash)> list_nightly_recharge_with_http_info

```ruby
begin
  # List Nightly Recharges
  data, status_code, headers = api_instance.list_nightly_recharge_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Recharges>
rescue PolarRb::ApiError => e
  puts "Error when calling NightlyRechargeApi->list_nightly_recharge_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Recharges**](Recharges.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v3_users_nightly_recharge_date_get

> <NightlyRecharge> v3_users_nightly_recharge_date_get(date)

Get Nightly Recharge

Get Users Nightly Recharge data for given date.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::NightlyRechargeApi.new
date = 'date_example' # String | Date of Nightly Recharge as ISO-8601 date string, example: \"2020-01-01\"

begin
  # Get Nightly Recharge
  result = api_instance.v3_users_nightly_recharge_date_get(date)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling NightlyRechargeApi->v3_users_nightly_recharge_date_get: #{e}"
end
```

#### Using the v3_users_nightly_recharge_date_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NightlyRecharge>, Integer, Hash)> v3_users_nightly_recharge_date_get_with_http_info(date)

```ruby
begin
  # Get Nightly Recharge
  data, status_code, headers = api_instance.v3_users_nightly_recharge_date_get_with_http_info(date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NightlyRecharge>
rescue PolarRb::ApiError => e
  puts "Error when calling NightlyRechargeApi->v3_users_nightly_recharge_date_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | Date of Nightly Recharge as ISO-8601 date string, example: \&quot;2020-01-01\&quot; |  |

### Return type

[**NightlyRecharge**](NightlyRecharge.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


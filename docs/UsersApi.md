# PolarRb::UsersApi

All URIs are relative to *https://www.polaraccesslink.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_user**](UsersApi.md#delete_user) | **DELETE** /v3/users/{user-id} | Delete user |
| [**get_user_information**](UsersApi.md#get_user_information) | **GET** /v3/users/{user-id} | Get user information |
| [**register_user**](UsersApi.md#register_user) | **POST** /v3/users | Register user |


## delete_user

> delete_user(user_id)

Delete user

When partner wishes no longer to receive user data, user can be de-registered.This will revoke the access token authorized by user.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::UsersApi.new
user_id = 789 # Integer | User identifier

begin
  # Delete user
  api_instance.delete_user(user_id)
rescue PolarRb::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(user_id)

```ruby
begin
  # Delete user
  data, status_code, headers = api_instance.delete_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PolarRb::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | User identifier |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_user_information

> <User> get_user_information(user_id)

Get user information

List user basic information. Note: Although it is possible to get users weight and height from this resource, the [get physical info](#get-physical-info) should be used instead.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::UsersApi.new
user_id = 475 # Integer | User identifier

begin
  # Get user information
  result = api_instance.get_user_information(user_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling UsersApi->get_user_information: #{e}"
end
```

#### Using the get_user_information_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_user_information_with_http_info(user_id)

```ruby
begin
  # Get user information
  data, status_code, headers = api_instance.get_user_information_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue PolarRb::ApiError => e
  puts "Error when calling UsersApi->get_user_information_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | User identifier |  |

### Return type

[**User**](User.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## register_user

> <User> register_user(register)

Register user

Once partner has been authorized by user, partner must register the user before being able to access its data. API user-id and Polar User Id (polar-user-id) are interchangeable terms.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::UsersApi.new
register = PolarRb::Register.new({member_id: 'User_id_999'}) # Register | 

begin
  # Register user
  result = api_instance.register_user(register)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling UsersApi->register_user: #{e}"
end
```

#### Using the register_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> register_user_with_http_info(register)

```ruby
begin
  # Register user
  data, status_code, headers = api_instance.register_user_with_http_info(register)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue PolarRb::ApiError => e
  puts "Error when calling UsersApi->register_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **register** | [**Register**](Register.md) |  |  |

### Return type

[**User**](User.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/xml, application/json
- **Accept**: application/json, application/xml


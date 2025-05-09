# PolarRb::DailyActivityApi

All URIs are relative to *https://www.polaraccesslink.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**commit_activity_transaction**](DailyActivityApi.md#commit_activity_transaction) | **PUT** /v3/users/{user-id}/activity-transactions/{transaction-id} | Commit transaction |
| [**create_activity_transaction**](DailyActivityApi.md#create_activity_transaction) | **POST** /v3/users/{user-id}/activity-transactions | Create transaction |
| [**get_activity_summary**](DailyActivityApi.md#get_activity_summary) | **GET** /v3/users/{user-id}/activity-transactions/{transaction-id}/activities/{activity-id} | Get activity summary |
| [**get_step_samples**](DailyActivityApi.md#get_step_samples) | **GET** /v3/users/{user-id}/activity-transactions/{transaction-id}/activities/{activity-id}/step-samples | Get step samples |
| [**get_zone_samples**](DailyActivityApi.md#get_zone_samples) | **GET** /v3/users/{user-id}/activity-transactions/{transaction-id}/activities/{activity-id}/zone-samples | Get zone samples |
| [**list_activities**](DailyActivityApi.md#list_activities) | **GET** /v3/users/{user-id}/activity-transactions/{transaction-id} | List activities |


## commit_activity_transaction

> commit_activity_transaction(transaction_id, user_id)

Commit transaction

After successfully retrieving activity summary data within a transaction, partners are expected to commit the transaction.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::DailyActivityApi.new
transaction_id = 789 # Integer | Transaction identifier
user_id = 56 # Integer | User identifier

begin
  # Commit transaction
  api_instance.commit_activity_transaction(transaction_id, user_id)
rescue PolarRb::ApiError => e
  puts "Error when calling DailyActivityApi->commit_activity_transaction: #{e}"
end
```

#### Using the commit_activity_transaction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> commit_activity_transaction_with_http_info(transaction_id, user_id)

```ruby
begin
  # Commit transaction
  data, status_code, headers = api_instance.commit_activity_transaction_with_http_info(transaction_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PolarRb::ApiError => e
  puts "Error when calling DailyActivityApi->commit_activity_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **user_id** | **Integer** | User identifier |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create_activity_transaction

> <TransactionLocation> create_activity_transaction(user_id)

Create transaction

Initiate activity transaction. Check for new activity summaries and create a new transaction if found. Only data uploaded to Flow in the last 30 days will be available. Only data that has been uploaded to Flow after the user is registered with your client will be available.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::DailyActivityApi.new
user_id = 56 # Integer | User identifier

begin
  # Create transaction
  result = api_instance.create_activity_transaction(user_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling DailyActivityApi->create_activity_transaction: #{e}"
end
```

#### Using the create_activity_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionLocation>, Integer, Hash)> create_activity_transaction_with_http_info(user_id)

```ruby
begin
  # Create transaction
  data, status_code, headers = api_instance.create_activity_transaction_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionLocation>
rescue PolarRb::ApiError => e
  puts "Error when calling DailyActivityApi->create_activity_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | User identifier |  |

### Return type

[**TransactionLocation**](TransactionLocation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## get_activity_summary

> <Activity> get_activity_summary(user_id, transaction_id, activity_id)

Get activity summary



### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::DailyActivityApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
activity_id = 56 # Integer | Activity summary identifier

begin
  # Get activity summary
  result = api_instance.get_activity_summary(user_id, transaction_id, activity_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling DailyActivityApi->get_activity_summary: #{e}"
end
```

#### Using the get_activity_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Activity>, Integer, Hash)> get_activity_summary_with_http_info(user_id, transaction_id, activity_id)

```ruby
begin
  # Get activity summary
  data, status_code, headers = api_instance.get_activity_summary_with_http_info(user_id, transaction_id, activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Activity>
rescue PolarRb::ApiError => e
  puts "Error when calling DailyActivityApi->get_activity_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | User identifier |  |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **activity_id** | **Integer** | Activity summary identifier |  |

### Return type

[**Activity**](Activity.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## get_step_samples

> <ActivityStepSamples> get_step_samples(user_id, transaction_id, activity_id)

Get step samples

Get activity step samples. Example data can be seen from [appendix](#activity-step-time-series).

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::DailyActivityApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
activity_id = 56 # Integer | Activity summary identifier

begin
  # Get step samples
  result = api_instance.get_step_samples(user_id, transaction_id, activity_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling DailyActivityApi->get_step_samples: #{e}"
end
```

#### Using the get_step_samples_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivityStepSamples>, Integer, Hash)> get_step_samples_with_http_info(user_id, transaction_id, activity_id)

```ruby
begin
  # Get step samples
  data, status_code, headers = api_instance.get_step_samples_with_http_info(user_id, transaction_id, activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivityStepSamples>
rescue PolarRb::ApiError => e
  puts "Error when calling DailyActivityApi->get_step_samples_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | User identifier |  |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **activity_id** | **Integer** | Activity summary identifier |  |

### Return type

[**ActivityStepSamples**](ActivityStepSamples.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## get_zone_samples

> <ActivityZoneSamples> get_zone_samples(user_id, transaction_id, activity_id)

Get zone samples

Get activity zone samples. Example data can be seen from [appendix](#activity-zone-time-series).

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::DailyActivityApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
activity_id = 56 # Integer | Activity summary identifier

begin
  # Get zone samples
  result = api_instance.get_zone_samples(user_id, transaction_id, activity_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling DailyActivityApi->get_zone_samples: #{e}"
end
```

#### Using the get_zone_samples_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivityZoneSamples>, Integer, Hash)> get_zone_samples_with_http_info(user_id, transaction_id, activity_id)

```ruby
begin
  # Get zone samples
  data, status_code, headers = api_instance.get_zone_samples_with_http_info(user_id, transaction_id, activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivityZoneSamples>
rescue PolarRb::ApiError => e
  puts "Error when calling DailyActivityApi->get_zone_samples_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | User identifier |  |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **activity_id** | **Integer** | Activity summary identifier |  |

### Return type

[**ActivityZoneSamples**](ActivityZoneSamples.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## list_activities

> <ActivityLog> list_activities(transaction_id, user_id)

List activities

List new activity data. After successfully initiating a transaction, activity summaries included within it can be retrieved with the provided transactionId.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::DailyActivityApi.new
transaction_id = 789 # Integer | Transaction identifier
user_id = 56 # Integer | User identifier

begin
  # List activities
  result = api_instance.list_activities(transaction_id, user_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling DailyActivityApi->list_activities: #{e}"
end
```

#### Using the list_activities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivityLog>, Integer, Hash)> list_activities_with_http_info(transaction_id, user_id)

```ruby
begin
  # List activities
  data, status_code, headers = api_instance.list_activities_with_http_info(transaction_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivityLog>
rescue PolarRb::ApiError => e
  puts "Error when calling DailyActivityApi->list_activities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **user_id** | **Integer** | User identifier |  |

### Return type

[**ActivityLog**](ActivityLog.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


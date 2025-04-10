# PolarRb::TrainingDataApi

All URIs are relative to *https://www.polaraccesslink.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**commit_exercise_transaction**](TrainingDataApi.md#commit_exercise_transaction) | **PUT** /v3/users/{user-id}/exercise-transactions/{transaction-id} | Commit transaction |
| [**create_exercise_transaction**](TrainingDataApi.md#create_exercise_transaction) | **POST** /v3/users/{user-id}/exercise-transactions | Create transaction |
| [**get_available_samples**](TrainingDataApi.md#get_available_samples) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/samples | Get available samples |
| [**get_exercise_summary**](TrainingDataApi.md#get_exercise_summary) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id} | Get exercise summary |
| [**get_fit**](TrainingDataApi.md#get_fit) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/fit | Get FIT |
| [**get_gpx**](TrainingDataApi.md#get_gpx) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/gpx | Get GPX |
| [**get_heart_rate_zones**](TrainingDataApi.md#get_heart_rate_zones) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/heart-rate-zones | Get heart rate zones |
| [**get_samples**](TrainingDataApi.md#get_samples) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/samples/{type-id} | Get samples |
| [**get_tcx**](TrainingDataApi.md#get_tcx) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/tcx | Get TCX |
| [**list_exercises**](TrainingDataApi.md#list_exercises) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id} | List exercises |


## commit_exercise_transaction

> commit_exercise_transaction(transaction_id, user_id)

Commit transaction

After successfully retrieving training session data within a transaction, partners are expected to commit the transaction.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::TrainingDataApi.new
transaction_id = 789 # Integer | Transaction identifier
user_id = 56 # Integer | User identifier

begin
  # Commit transaction
  api_instance.commit_exercise_transaction(transaction_id, user_id)
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->commit_exercise_transaction: #{e}"
end
```

#### Using the commit_exercise_transaction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> commit_exercise_transaction_with_http_info(transaction_id, user_id)

```ruby
begin
  # Commit transaction
  data, status_code, headers = api_instance.commit_exercise_transaction_with_http_info(transaction_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->commit_exercise_transaction_with_http_info: #{e}"
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


## create_exercise_transaction

> <TransactionLocation> create_exercise_transaction(user_id)

Create transaction

Check for new training data and create a new transaction if found. Only data uploaded to Flow in the last 30 days will be available. Only data that has been uploaded to Flow after the user is registered with your client will be available.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::TrainingDataApi.new
user_id = 56 # Integer | User identifier

begin
  # Create transaction
  result = api_instance.create_exercise_transaction(user_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->create_exercise_transaction: #{e}"
end
```

#### Using the create_exercise_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionLocation>, Integer, Hash)> create_exercise_transaction_with_http_info(user_id)

```ruby
begin
  # Create transaction
  data, status_code, headers = api_instance.create_exercise_transaction_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionLocation>
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->create_exercise_transaction_with_http_info: #{e}"
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


## get_available_samples

> <Samples> get_available_samples(user_id, transaction_id, exercise_id)

Get available samples

Retrieve list of links to available samples in training session

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::TrainingDataApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  # Get available samples
  result = api_instance.get_available_samples(user_id, transaction_id, exercise_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_available_samples: #{e}"
end
```

#### Using the get_available_samples_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Samples>, Integer, Hash)> get_available_samples_with_http_info(user_id, transaction_id, exercise_id)

```ruby
begin
  # Get available samples
  data, status_code, headers = api_instance.get_available_samples_with_http_info(user_id, transaction_id, exercise_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Samples>
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_available_samples_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | User identifier |  |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **exercise_id** | **Integer** | Exercise identifier |  |

### Return type

[**Samples**](Samples.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## get_exercise_summary

> <Exercise> get_exercise_summary(user_id, transaction_id, exercise_id)

Get exercise summary

Retrieve training session summary data

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::TrainingDataApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  # Get exercise summary
  result = api_instance.get_exercise_summary(user_id, transaction_id, exercise_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_exercise_summary: #{e}"
end
```

#### Using the get_exercise_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Exercise>, Integer, Hash)> get_exercise_summary_with_http_info(user_id, transaction_id, exercise_id)

```ruby
begin
  # Get exercise summary
  data, status_code, headers = api_instance.get_exercise_summary_with_http_info(user_id, transaction_id, exercise_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Exercise>
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_exercise_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | User identifier |  |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **exercise_id** | **Integer** | Exercise identifier |  |

### Return type

[**Exercise**](Exercise.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## get_fit

> String get_fit(user_id, transaction_id, exercise_id)

Get FIT

Retrieve exercise in FIT format. See [FIT sport mappings in appendix](#sport-type-mapping-in-fit-files).

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::TrainingDataApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  # Get FIT
  result = api_instance.get_fit(user_id, transaction_id, exercise_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_fit: #{e}"
end
```

#### Using the get_fit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_fit_with_http_info(user_id, transaction_id, exercise_id)

```ruby
begin
  # Get FIT
  data, status_code, headers = api_instance.get_fit_with_http_info(user_id, transaction_id, exercise_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_fit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | User identifier |  |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **exercise_id** | **Integer** | Exercise identifier |  |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_gpx

> String get_gpx(user_id, transaction_id, exercise_id, opts)

Get GPX

Retrieve training session summary data in GPX format

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::TrainingDataApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier
opts = {
  include_pause_times: true # Boolean | Whether to add pauses as part of the route. Default is false.
}

begin
  # Get GPX
  result = api_instance.get_gpx(user_id, transaction_id, exercise_id, opts)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_gpx: #{e}"
end
```

#### Using the get_gpx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_gpx_with_http_info(user_id, transaction_id, exercise_id, opts)

```ruby
begin
  # Get GPX
  data, status_code, headers = api_instance.get_gpx_with_http_info(user_id, transaction_id, exercise_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_gpx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | User identifier |  |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **exercise_id** | **Integer** | Exercise identifier |  |
| **include_pause_times** | **Boolean** | Whether to add pauses as part of the route. Default is false. | [optional][default to false] |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/gpx+xml


## get_heart_rate_zones

> <Zones> get_heart_rate_zones(user_id, transaction_id, exercise_id)

Get heart rate zones

Retrieve heart rate zones in training session

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::TrainingDataApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  # Get heart rate zones
  result = api_instance.get_heart_rate_zones(user_id, transaction_id, exercise_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_heart_rate_zones: #{e}"
end
```

#### Using the get_heart_rate_zones_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Zones>, Integer, Hash)> get_heart_rate_zones_with_http_info(user_id, transaction_id, exercise_id)

```ruby
begin
  # Get heart rate zones
  data, status_code, headers = api_instance.get_heart_rate_zones_with_http_info(user_id, transaction_id, exercise_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Zones>
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_heart_rate_zones_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | User identifier |  |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **exercise_id** | **Integer** | Exercise identifier |  |

### Return type

[**Zones**](Zones.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## get_samples

> <Sample> get_samples(type_id, user_id, transaction_id, exercise_id)

Get samples

Retrieve sample data of given type

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::TrainingDataApi.new
type_id = BYTE_ARRAY_DATA_HERE # String | Sample type id
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  # Get samples
  result = api_instance.get_samples(type_id, user_id, transaction_id, exercise_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_samples: #{e}"
end
```

#### Using the get_samples_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Sample>, Integer, Hash)> get_samples_with_http_info(type_id, user_id, transaction_id, exercise_id)

```ruby
begin
  # Get samples
  data, status_code, headers = api_instance.get_samples_with_http_info(type_id, user_id, transaction_id, exercise_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Sample>
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_samples_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type_id** | **String** | Sample type id |  |
| **user_id** | **Integer** | User identifier |  |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **exercise_id** | **Integer** | Exercise identifier |  |

### Return type

[**Sample**](Sample.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## get_tcx

> String get_tcx(user_id, transaction_id, exercise_id)

Get TCX

Retrieve exercise in TCX format

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::TrainingDataApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  # Get TCX
  result = api_instance.get_tcx(user_id, transaction_id, exercise_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_tcx: #{e}"
end
```

#### Using the get_tcx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_tcx_with_http_info(user_id, transaction_id, exercise_id)

```ruby
begin
  # Get TCX
  data, status_code, headers = api_instance.get_tcx_with_http_info(user_id, transaction_id, exercise_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->get_tcx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | User identifier |  |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **exercise_id** | **Integer** | Exercise identifier |  |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.garmin.tcx+xml


## list_exercises

> <Exercises> list_exercises(transaction_id, user_id)

List exercises

After successfully initiating a transaction, training sessions included within it can be retrieved with the provided transactionId.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::TrainingDataApi.new
transaction_id = 789 # Integer | Transaction identifier
user_id = 56 # Integer | User identifier

begin
  # List exercises
  result = api_instance.list_exercises(transaction_id, user_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->list_exercises: #{e}"
end
```

#### Using the list_exercises_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Exercises>, Integer, Hash)> list_exercises_with_http_info(transaction_id, user_id)

```ruby
begin
  # List exercises
  data, status_code, headers = api_instance.list_exercises_with_http_info(transaction_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Exercises>
rescue PolarRb::ApiError => e
  puts "Error when calling TrainingDataApi->list_exercises_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **Integer** | Transaction identifier |  |
| **user_id** | **Integer** | User identifier |  |

### Return type

[**Exercises**](Exercises.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


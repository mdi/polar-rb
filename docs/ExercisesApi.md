# PolarRb::ExercisesApi

All URIs are relative to *https://www.polaraccesslink.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_exercise_fit_without_transaction**](ExercisesApi.md#get_exercise_fit_without_transaction) | **GET** /v3/exercises/{exerciseId}/fit | Get exercise FIT |
| [**get_exercise_gpx_without_transaction**](ExercisesApi.md#get_exercise_gpx_without_transaction) | **GET** /v3/exercises/{exerciseId}/gpx | Get exercise GPX |
| [**get_exercise_tcx_without_transaction**](ExercisesApi.md#get_exercise_tcx_without_transaction) | **GET** /v3/exercises/{exerciseId}/tcx | Get exercise TCX |
| [**get_exercise_without_transaction**](ExercisesApi.md#get_exercise_without_transaction) | **GET** /v3/exercises/{exerciseId} | Get exercise |
| [**list_exercises_without_transaction**](ExercisesApi.md#list_exercises_without_transaction) | **GET** /v3/exercises | List exercises |


## get_exercise_fit_without_transaction

> String get_exercise_fit_without_transaction(exercise_id)

Get exercise FIT

FIT file for users exercise. Only Exercises uploaded to Flow in the last 30 days are available. Only exercises that have been uploaded to Flow after the user is registered with your client will be available. See [FIT sport mappings in appendix](#sport-type-mapping-in-fit-files).

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::ExercisesApi.new
exercise_id = 'exercise_id_example' # String | Hashed exercise id.

begin
  # Get exercise FIT
  result = api_instance.get_exercise_fit_without_transaction(exercise_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling ExercisesApi->get_exercise_fit_without_transaction: #{e}"
end
```

#### Using the get_exercise_fit_without_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_exercise_fit_without_transaction_with_http_info(exercise_id)

```ruby
begin
  # Get exercise FIT
  data, status_code, headers = api_instance.get_exercise_fit_without_transaction_with_http_info(exercise_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue PolarRb::ApiError => e
  puts "Error when calling ExercisesApi->get_exercise_fit_without_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exercise_id** | **String** | Hashed exercise id. |  |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_exercise_gpx_without_transaction

> String get_exercise_gpx_without_transaction(exercise_id)

Get exercise GPX

GPX file for users exercise without an Accesslink \"transaction\". Only Exercises uploaded to Flow in the last 30 days are available. Only exercises that have been uploaded to Flow after the user is registered with your client will be available.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::ExercisesApi.new
exercise_id = 'exercise_id_example' # String | Hashed exercise id.

begin
  # Get exercise GPX
  result = api_instance.get_exercise_gpx_without_transaction(exercise_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling ExercisesApi->get_exercise_gpx_without_transaction: #{e}"
end
```

#### Using the get_exercise_gpx_without_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_exercise_gpx_without_transaction_with_http_info(exercise_id)

```ruby
begin
  # Get exercise GPX
  data, status_code, headers = api_instance.get_exercise_gpx_without_transaction_with_http_info(exercise_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue PolarRb::ApiError => e
  puts "Error when calling ExercisesApi->get_exercise_gpx_without_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exercise_id** | **String** | Hashed exercise id. |  |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/gpx+xml


## get_exercise_tcx_without_transaction

> String get_exercise_tcx_without_transaction(exercise_id)

Get exercise TCX

TCX file for users exercise without an Accesslink \"transaction\". Only Exercises uploaded to Flow in the last 30 days are available. Only exercises that have been uploaded to Flow after the user is registered with your client will be available.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::ExercisesApi.new
exercise_id = 'exercise_id_example' # String | Hashed exercise id.

begin
  # Get exercise TCX
  result = api_instance.get_exercise_tcx_without_transaction(exercise_id)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling ExercisesApi->get_exercise_tcx_without_transaction: #{e}"
end
```

#### Using the get_exercise_tcx_without_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_exercise_tcx_without_transaction_with_http_info(exercise_id)

```ruby
begin
  # Get exercise TCX
  data, status_code, headers = api_instance.get_exercise_tcx_without_transaction_with_http_info(exercise_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue PolarRb::ApiError => e
  puts "Error when calling ExercisesApi->get_exercise_tcx_without_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exercise_id** | **String** | Hashed exercise id. |  |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.garmin.tcx+xml


## get_exercise_without_transaction

> <ExerciseHashId> get_exercise_without_transaction(exercise_id, opts)

Get exercise

Get users exercise using hashed id. Only Exercises uploaded to Flow in the last 30 days are available. Only exercises that have been uploaded to Flow after the user is registered with your client will be available. Use samples and zones query parameters to return optional samples and zone information of the exercise.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::ExercisesApi.new
exercise_id = 'exercise_id_example' # String | Hashed exercise id.
opts = {
  samples: true, # Boolean | Return all sample data for this exercise.
  zones: true # Boolean | Return all zones data for this exercise.
}

begin
  # Get exercise
  result = api_instance.get_exercise_without_transaction(exercise_id, opts)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling ExercisesApi->get_exercise_without_transaction: #{e}"
end
```

#### Using the get_exercise_without_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExerciseHashId>, Integer, Hash)> get_exercise_without_transaction_with_http_info(exercise_id, opts)

```ruby
begin
  # Get exercise
  data, status_code, headers = api_instance.get_exercise_without_transaction_with_http_info(exercise_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExerciseHashId>
rescue PolarRb::ApiError => e
  puts "Error when calling ExercisesApi->get_exercise_without_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exercise_id** | **String** | Hashed exercise id. |  |
| **samples** | **Boolean** | Return all sample data for this exercise. | [optional] |
| **zones** | **Boolean** | Return all zones data for this exercise. | [optional] |

### Return type

[**ExerciseHashId**](ExerciseHashId.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_exercises_without_transaction

> <Array<ExerciseHashId>> list_exercises_without_transaction(opts)

List exercises

List users exercises available in Accesslink. Only Exercises uploaded to Flow in the last 30 days are returned. Only exercises that have been uploaded to Flow after the user is registered with your client will be returned. Use samples and zones query parameters to return optional samples and zone information of the exercises. Training Load Pro data will be included in the exercise object if the exercise is recorded with a specific wrist unit model,  please check [compatible devices](https://www.polar.com/en/smart-coaching/training-load-pro) for more information.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarRb::ExercisesApi.new
opts = {
  samples: true, # Boolean | Return all sample data for this exercise.
  zones: true # Boolean | Return all zones data for this exercise.
}

begin
  # List exercises
  result = api_instance.list_exercises_without_transaction(opts)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling ExercisesApi->list_exercises_without_transaction: #{e}"
end
```

#### Using the list_exercises_without_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ExerciseHashId>>, Integer, Hash)> list_exercises_without_transaction_with_http_info(opts)

```ruby
begin
  # List exercises
  data, status_code, headers = api_instance.list_exercises_without_transaction_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ExerciseHashId>>
rescue PolarRb::ApiError => e
  puts "Error when calling ExercisesApi->list_exercises_without_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **samples** | **Boolean** | Return all sample data for this exercise. | [optional] |
| **zones** | **Boolean** | Return all zones data for this exercise. | [optional] |

### Return type

[**Array&lt;ExerciseHashId&gt;**](ExerciseHashId.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


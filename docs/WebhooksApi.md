# PolarRb::WebhooksApi

All URIs are relative to *https://www.polaraccesslink.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /v3/webhooks | Create webhook |
| [**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /v3/webhooks/{webhook-id} | Delete webhook |
| [**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /v3/webhooks | Get webhook |
| [**update_webhook**](WebhooksApi.md#update_webhook) | **PATCH** /v3/webhooks/{webhook-id} | Update webhook |
| [**v3_webhooks_activate_get**](WebhooksApi.md#v3_webhooks_activate_get) | **GET** /v3/webhooks/activate | Activate webhook |
| [**v3_webhooks_deactivate_get**](WebhooksApi.md#v3_webhooks_deactivate_get) | **GET** /v3/webhooks/deactivate | Deactivate webhook |


## create_webhook

> <CreatedWebhook> create_webhook(webhook_request)

Create webhook

Create new webhook.  When creating webhook the Accesslink sends a ping message to the url in request body. The ping message must be answered with 200 OK or otherwise the webhook is not created.  Created webhook is by default in activated state and will send push notifications about subscribed events. Webhook will be automatically deactivated if push notifications have not been successful for a period of seven (7) days. **Note!** Save the *signature_secret_key* from response since this is the only chance to get it.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PolarRb::WebhooksApi.new
webhook_request = PolarRb::WebhookRequest.new({events: ["EXERCISE"], url: 'https://myapp.example.com/acl_webhook'}) # WebhookRequest | Webhook to create.

begin
  # Create webhook
  result = api_instance.create_webhook(webhook_request)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatedWebhook>, Integer, Hash)> create_webhook_with_http_info(webhook_request)

```ruby
begin
  # Create webhook
  data, status_code, headers = api_instance.create_webhook_with_http_info(webhook_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatedWebhook>
rescue PolarRb::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_request** | [**WebhookRequest**](WebhookRequest.md) | Webhook to create. |  |

### Return type

[**CreatedWebhook**](CreatedWebhook.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> delete_webhook(webhook_id)

Delete webhook

Delete webhook by id.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PolarRb::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook id to delete

begin
  # Delete webhook
  api_instance.delete_webhook(webhook_id)
rescue PolarRb::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhook_with_http_info(webhook_id)

```ruby
begin
  # Delete webhook
  data, status_code, headers = api_instance.delete_webhook_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PolarRb::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook id to delete |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook

> <WebhookInfo> get_webhook

Get webhook

Returns created webhook if exists.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PolarRb::WebhooksApi.new

begin
  # Get webhook
  result = api_instance.get_webhook
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook: #{e}"
end
```

#### Using the get_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookInfo>, Integer, Hash)> get_webhook_with_http_info

```ruby
begin
  # Get webhook
  data, status_code, headers = api_instance.get_webhook_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookInfo>
rescue PolarRb::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WebhookInfo**](WebhookInfo.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook

> <WebhookInfo> update_webhook(webhook_id, webhook_patch)

Update webhook

Edit webhook event types and/or url.  When updating webhook url the Accesslink sends a ping message to the new address. The ping message must be answered with 200 OK or otherwise the webhook is not updated.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PolarRb::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook id to update
webhook_patch = PolarRb::WebhookPatch.new # WebhookPatch | New value(s) for events and/or url.

begin
  # Update webhook
  result = api_instance.update_webhook(webhook_id, webhook_patch)
  p result
rescue PolarRb::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook: #{e}"
end
```

#### Using the update_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookInfo>, Integer, Hash)> update_webhook_with_http_info(webhook_id, webhook_patch)

```ruby
begin
  # Update webhook
  data, status_code, headers = api_instance.update_webhook_with_http_info(webhook_id, webhook_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookInfo>
rescue PolarRb::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook id to update |  |
| **webhook_patch** | [**WebhookPatch**](WebhookPatch.md) | New value(s) for events and/or url. |  |

### Return type

[**WebhookInfo**](WebhookInfo.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v3_webhooks_activate_get

> v3_webhooks_activate_get

Activate webhook

Activate deactivated webhook. Activation is successful if the configured webhook url returns HTTP status 200 (OK) for the issued ping request.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PolarRb::WebhooksApi.new

begin
  # Activate webhook
  api_instance.v3_webhooks_activate_get
rescue PolarRb::ApiError => e
  puts "Error when calling WebhooksApi->v3_webhooks_activate_get: #{e}"
end
```

#### Using the v3_webhooks_activate_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v3_webhooks_activate_get_with_http_info

```ruby
begin
  # Activate webhook
  data, status_code, headers = api_instance.v3_webhooks_activate_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PolarRb::ApiError => e
  puts "Error when calling WebhooksApi->v3_webhooks_activate_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## v3_webhooks_deactivate_get

> v3_webhooks_deactivate_get

Deactivate webhook

Deactivate activated webhook. Deactivated webhook does not push notifications about subscribed events.

### Examples

```ruby
require 'time'
require 'polar-rb'
# setup authorization
PolarRb.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PolarRb::WebhooksApi.new

begin
  # Deactivate webhook
  api_instance.v3_webhooks_deactivate_get
rescue PolarRb::ApiError => e
  puts "Error when calling WebhooksApi->v3_webhooks_deactivate_get: #{e}"
end
```

#### Using the v3_webhooks_deactivate_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v3_webhooks_deactivate_get_with_http_info

```ruby
begin
  # Deactivate webhook
  data, status_code, headers = api_instance.v3_webhooks_deactivate_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PolarRb::ApiError => e
  puts "Error when calling WebhooksApi->v3_webhooks_deactivate_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


# PolarRb::CreatedWebhookData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the new webhook. | [optional] |
| **events** | [**Array&lt;WebhookType&gt;**](WebhookType.md) | Subscribed event types. | [optional] |
| **url** | **String** | Url where the webhook notification is sent. | [optional] |
| **signature_secret_key** | **String** | Signing key for verifying that sender is actually Polar. | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::CreatedWebhookData.new(
  id: abdf33,
  events: [&quot;EXERCISE&quot;],
  url: https://myapp.example.com/acl_webhook,
  signature_secret_key: abe1f3ae-fd33-11e8-8eb2-f2801f1b9fd1
)
```


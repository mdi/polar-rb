# PolarRb::WebhookInfoData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the webhook. | [optional] |
| **events** | [**Array&lt;WebhookType&gt;**](WebhookType.md) | Subscribed event types. | [optional] |
| **url** | **String** | Url where the webhook notification is sent. | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::WebhookInfoData.new(
  id: abdf33,
  events: [&quot;EXERCISE&quot;],
  url: https://myapp.example.com/acl_webhook
)
```


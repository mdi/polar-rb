# PolarRb::WebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events** | [**Array&lt;WebhookType&gt;**](WebhookType.md) | Type of events to subscribe. |  |
| **url** | **String** | Url where the webhook notification is sent. |  |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::WebhookRequest.new(
  events: [&quot;EXERCISE&quot;],
  url: https://myapp.example.com/acl_webhook
)
```


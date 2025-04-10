# PolarRb::WebhookPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events** | [**Array&lt;WebhookType&gt;**](WebhookType.md) | Type of events to subscribe. | [optional] |
| **url** | **String** | Url where the webhook notification is sent. | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::WebhookPatch.new(
  events: [&quot;EXERCISE&quot;],
  url: https://myapp.example.com/acl_webhook
)
```


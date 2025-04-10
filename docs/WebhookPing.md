# PolarRb::WebhookPing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Time** | Time when webhook ping is sent. | [optional] |
| **event** | **String** | Only possible value is PING for ping message. | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::WebhookPing.new(
  timestamp: 2018-05-15T14:22:24Z,
  event: null
)
```


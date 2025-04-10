# PolarRb::WebhookPayloadAlertness

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** | Type of available data. | [optional] |
| **user_id** | **Integer** | Id of the user who has new data. | [optional] |
| **from** | **String** | For consistency use period for all descriptions | [optional] |
| **to** | **String** | For consistency use period for all descriptions | [optional] |
| **timestamp** | **Time** | Time when webhook notification is sent. | [optional] |
| **url** | **String** | Url to the new available data. | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::WebhookPayloadAlertness.new(
  event: SLEEP_WISE_ALERTNESS,
  user_id: 475,
  from: 2022-09-31,
  to: 2022-10-02,
  timestamp: 2022-10-02T14:22:24Z,
  url: https://www.polaraccesslink.com/v3/users/sleepwise/alertness/date?from&#x3D;2022-09-31&amp;to&#x3D;2022-10-02
)
```


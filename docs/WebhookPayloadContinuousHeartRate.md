# PolarRb::WebhookPayloadContinuousHeartRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** | Type of available data. | [optional] |
| **user_id** | **Integer** | Id of the user who has new data. | [optional] |
| **date** | **String** | Date of the available continuous hr data. | [optional] |
| **timestamp** | **Time** | Time when webhook notification is sent. | [optional] |
| **url** | **String** | Url to the new available data. | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::WebhookPayloadContinuousHeartRate.new(
  event: CONTINUOUS_HEART_RATE,
  user_id: 475,
  date: 2022-09-31,
  timestamp: 2018-05-15T14:22:24Z,
  url: https://www.polaraccesslink.com/v3/users/continuous-heart-rate/2022-09-31
)
```


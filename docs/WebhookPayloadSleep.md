# PolarRb::WebhookPayloadSleep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** | Type of available data. | [optional] |
| **user_id** | **Integer** | Id of the user who has new data. | [optional] |
| **date** | **String** | Date of the available sleep data. | [optional] |
| **timestamp** | **Time** | Time when webhook notification is sent. | [optional] |
| **url** | **String** | Url to the new available data. | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::WebhookPayloadSleep.new(
  event: SLEEP,
  user_id: 475,
  date: 2019-12-31,
  timestamp: 2018-05-15T14:22:24Z,
  url: https://www.polaraccesslink.com/v3/users/sleep/getSleepByDate/2019-12-31
)
```


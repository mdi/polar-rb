# PolarRb::WebhookPayloadExercise

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** | Type of available data. | [optional] |
| **user_id** | **Integer** | Id of the user who has new data. | [optional] |
| **entity_id** | **String** | Id of the available data. | [optional] |
| **timestamp** | **Time** | Time when webhook notification is sent. | [optional] |
| **url** | **String** | Url to the new available data. | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::WebhookPayloadExercise.new(
  event: EXERCISE,
  user_id: 475,
  entity_id: aQlC83,
  timestamp: 2018-05-15T14:22:24Z,
  url: https://www.polaraccesslink.com/v3/exercises/aQlC83
)
```


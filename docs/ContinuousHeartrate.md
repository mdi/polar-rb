# PolarRb::ContinuousHeartrate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **polar_user** | **String** | Absolute link to user owning the continuous heart rate samples | [optional] |
| **date** | **Date** | Result date of the Continuous Heart Rate | [optional] |
| **heart_rate_samples** | [**ContinuousHeartrateHeartRateSamples**](ContinuousHeartrateHeartRateSamples.md) |  | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::ContinuousHeartrate.new(
  polar_user: https://www.polaraccesslink/v3/users/1,
  date: Tue Dec 31 19:00:00 EST 2019,
  heart_rate_samples: null
)
```


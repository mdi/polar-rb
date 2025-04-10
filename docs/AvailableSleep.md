# PolarRb::AvailableSleep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Result date of the sleep | [optional] |
| **start_time** | **Time** | Start timestamp of the sleep as ISO-8601 datetime string | [optional] |
| **end_time** | **Time** | End timestamp of the sleep as ISO-8601 datetime string | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::AvailableSleep.new(
  date: Tue Dec 31 19:00:00 EST 2019,
  start_time: 2020-01-01T00:39:07+03:00,
  end_time: 2020-01-01T09:39:07+03:00
)
```


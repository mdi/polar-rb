# PolarRb::ActivityZoneSamples

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | Activity zone sample date | [optional] |
| **interval** | **Integer** | Sample interval in minutes. | [optional] |
| **samples** | [**Array&lt;ActivityZoneSample&gt;**](ActivityZoneSample.md) | List of individual zone sample objects. | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::ActivityZoneSamples.new(
  date: 2022-02-10,
  interval: null,
  samples: null
)
```


# PolarRb::ActivityStepSamples

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | Activity step sample date | [optional] |
| **interval** | **Integer** | Sample interval in minutes. | [optional] |
| **samples** | [**Array&lt;ActivityStepSample&gt;**](ActivityStepSample.md) | List of individual step sample objects. | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::ActivityStepSamples.new(
  date: 2022-02-10,
  interval: null,
  samples: null
)
```


# PolarRb::ActivityLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activity_log** | **Array&lt;String&gt;** | Absolute links to individual activity summaries within the transaction | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::ActivityLog.new(
  activity_log: [&quot;https://www.polaraccesslink.com/v3/users/12/activity-transactions/34/activities/56&quot;,&quot;https://www.polaraccesslink.com/v3/users/12/activity-transactions/34/activities/120&quot;]
)
```


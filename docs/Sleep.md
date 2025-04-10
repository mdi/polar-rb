# PolarRb::Sleep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **polar_user** | **String** | Absolute link to user owning the sleep | [optional] |
| **date** | **Date** | Result date of the sleep | [optional] |
| **sleep_start_time** | **Time** | Start timestamp of the sleep as ISO-8601 datetime string | [optional] |
| **sleep_end_time** | **Time** | End timestamp of the sleep as ISO-8601 datetime string | [optional] |
| **device_id** | **String** | Id of the device the sleep was measured with | [optional] |
| **continuity** | **Float** | Continuity is an estimate of how continuous the sleep was on a scale of 1.0 – 5.0, where 5.0 reflects uninterrupted sleep. The lower the value the more fragmented the sleep was. | [optional] |
| **continuity_class** | **Integer** | Verbal assessments of sleep continuity Very continuous sleep (5) Continuous sleep (4) Fairly continuous sleep (3) Fairly fragmented sleep (2) Fragmented sleep (1) | [optional] |
| **light_sleep** | **Integer** | Total time in seconds spent in light sleep stage between when you fell asleep and when you woke up. Corresponds to N1+ N2 according to AASM classification. | [optional] |
| **deep_sleep** | **Integer** | Total time in seconds spent in the deep sleep stage between when you fell asleep and when you woke up. Corresponds to N3 according to AASM classification. | [optional] |
| **rem_sleep** | **Integer** | Total time in seconds spent in REM sleep stage between when you fell asleep and when you woke up. REM stands for rapid eye movement. | [optional] |
| **unrecognized_sleep_stage** | **Integer** | Total time in seconds spent in unrecognised sleep stage. Sometimes it&#39;s impossible to recognize sleep stages. This might happen when, for example, the wrist strap is not tight enough, or if you sleep on your hand. | [optional] |
| **sleep_score** | **Integer** | Sleep score summarizes the amount and quality of your sleep into a single number on a scale of 1 – 100. Sleep score tells you how well you slept compared to the indicators of a good night&#39;s sleep based on the current sleep science. It consists of six components; sleep time, long interruptions, continuity, actual sleep, REM sleep, and deep sleep. | [optional] |
| **total_interruption_duration** | **Integer** | The total time in seconds you spent awake between when you fell asleep and when you woke up. | [optional] |
| **sleep_charge** | **Integer** | Sleep score compared to your usual level from the past 28 days.Scale: much below usual (1) – below usual (2) – usual (3) – above usual (4) – much above usual(5). | [optional] |
| **sleep_goal** | **Integer** | Time goal in seconds for sleep selectedby user. A default value of the setting is based on age-related sleep duration recommendations. | [optional] |
| **sleep_rating** | **Integer** | Numeric value given by user for representing the quality of sleep. Selection scale: Very poorly(1), poorly(2), ok(3), well(4), very well(5). 0 means no value is given. | [optional] |
| **short_interruption_duration** | **Integer** | Total time in seconds of short interruptions. Short interruption is interruption in sleep of less than 90 seconds. | [optional] |
| **long_interruption_duration** | **Integer** | Total time in seconds of long interruptions. Long interruption is interruption in sleep of 90 seconds or more. | [optional] |
| **sleep_cycles** | **Integer** | Number of sleep cycles. | [optional] |
| **group_duration_score** | **Float** | Sleep score consists of six components that are grouped under three themes. Score for sleep duration theme looks at your sleep time compared to your ‘preferred sleep time’ setting and the age-related duration recommendations. Group duration score ranges from 1.0 to 100.0. It is interpreted as textual feedback: poor, moderate or good amount. | [optional] |
| **group_solidity_score** | **Float** | Sleep score consists of six components that are grouped under three themes. Score for sleep solidity theme is the average of the component scores of long interruptions, continuity and actual sleep. Group solidity score ranges from 1.0 to 100.0. It is interpreted as textual feedback: poor, moderate or good solidity. | [optional] |
| **group_regeneration_score** | **Float** | Sleep score consists of six components that are grouped under three themes. Score for regeneration theme is the average of the scores of REM sleep and deep sleep. Group regeneration score ranges from 1.0 to 100.0. It is interpreted as textual feedback: poor, moderate or good regeneration | [optional] |
| **hypnogram** | **Object** | The time span between when you fell asleep and when you woke up is classified into light, deep or REM sleep, or unrecognised or wake in 30-s epochs.  0 &#x3D; WAKE, 1 &#x3D; REM, 2 &#x3D; LIGHTER NON-REM, 3 &#x3D; LIGHT NON-REM, 4 &#x3D; DEEP NON-REM, 5 &#x3D; UNKNOWN (eg. due to bad skin contact). | [optional] |
| **heart_rate_samples** | **Object** | 5 min average samples of heart rate from the duration of the sleep. Default time between samples is 5 minutes. There may be periods with samples more often than every 5 minutes. Unit of samples is beats per minute (bpm). | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::Sleep.new(
  polar_user: https://www.polaraccesslink/v3/users/1,
  date: Tue Dec 31 19:00:00 EST 2019,
  sleep_start_time: 2020-01-01T00:39:07+03:00,
  sleep_end_time: 2020-01-01T09:19:37+03:00,
  device_id: 1111AAAA,
  continuity: 2.1,
  continuity_class: 2,
  light_sleep: 1000,
  deep_sleep: 1000,
  rem_sleep: 1000,
  unrecognized_sleep_stage: 1000,
  sleep_score: 80,
  total_interruption_duration: 1000,
  sleep_charge: 3,
  sleep_goal: 28800,
  sleep_rating: 3,
  short_interruption_duration: 500,
  long_interruption_duration: 300,
  sleep_cycles: 6,
  group_duration_score: 100.0,
  group_solidity_score: 75.0,
  group_regeneration_score: 54.2,
  hypnogram: {&quot;00:39&quot;:2,&quot;00:50&quot;:3,&quot;01:23&quot;:6},
  heart_rate_samples: {&quot;00:41&quot;:76,&quot;00:46&quot;:77,&quot;00:51&quot;:76}
)
```


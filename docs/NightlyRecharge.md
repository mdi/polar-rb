# PolarRb::NightlyRecharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **polar_user** | **String** | Absolute link to user owning the sleep | [optional] |
| **date** | **Date** | Result date of the Nightly Recharge | [optional] |
| **heart_rate_avg** | **Integer** | Average heart rate as beats per minute (bpm) during a 4-hour period starting at 30 minutes after falling asleep. | [optional] |
| **beat_to_beat_avg** | **Integer** | Average time in milliseconds (ms) between successive heart beats during a 4-hour period starting at 30 minutes after falling asleep. | [optional] |
| **heart_rate_variability_avg** | **Integer** | Average variation in the time in milliseconds (ms) between successive heart beats during a 4-hour period starting at 30 minutes after falling asleep. The Heart rate variability is Root Mean Square of Successive Differences (RMSSD) in beat-to-beat intervals. | [optional] |
| **breathing_rate_avg** | **Float** | Average breathing rate as breaths per minute (bpm) during a 4-hour period starting at 30 minutes after falling asleep. | [optional] |
| **nightly_recharge_status** | **Integer** | The Nightly Recharge status shows how your body was able to recover from training and stress during the night. Scores for both ANS charge and sleep charge are taken into account. Nightly Recharge status has the following (6-item) scale: very poor (1) – poor (2) – compromised (3) – OK (4) – good (5) – very good (6). | [optional] |
| **ans_charge** | **Float** | ANS stands for autonomic nervous system. ANS charge is formed by measuring heart rate, heart rate variability and breathing rate during roughly the first four hours of your sleep. It is formed comparing your last night to your usual levels from the past 28 days. The scale is from -10.0 to +10.0. Around zero is your usual level. | [optional] |
| **ans_charge_status** | **Integer** | ANS charge status &#x3D; much below usual (1) - below usual (2) - usual (3) - above usual (4) - much above usual (5) | [optional] |
| **hrv_samples** | **Object** | 5-minute average samples of heart rate variability. Unit of samples is milliseconds(ms). | [optional] |
| **breathing_samples** | **Object** | 5-minute average samples of breathing rate. Unit of samples is breaths per minute (bpm). | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::NightlyRecharge.new(
  polar_user: https://www.polaraccesslink/v3/users/1,
  date: Tue Dec 31 19:00:00 EST 2019,
  heart_rate_avg: 70,
  beat_to_beat_avg: 816,
  heart_rate_variability_avg: 28,
  breathing_rate_avg: 14.1,
  nightly_recharge_status: 3,
  ans_charge: 0.0,
  ans_charge_status: 3,
  hrv_samples: {&quot;00:41&quot;:14,&quot;00:46&quot;:14,&quot;00:51&quot;:15},
  breathing_samples: {&quot;00:39&quot;:13.4,&quot;00:44&quot;:13.5,&quot;00:49&quot;:13.5}
)
```


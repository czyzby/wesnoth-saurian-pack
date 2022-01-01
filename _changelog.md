# Changelog

This file is formatted using Markdown.

This modification follows the [Semantic Versioning](https://semver.org/) rules.
All versions use the `MAJOR.MINOR.PATCH` format.

* MAJOR version is incremented after any gameplay changes, including new units
or stat adjustments. Releases with the same MAJOR version are always compatible.
* MINOR version is incremented when new translations or graphics are added.
* PATCH version is incremented in case of minor graphical fixes or typo corrections.

## 4.1.3

* Added missing leg bracelets to Prophet's NE running animation frames.
* Fixed Spearwoman eyes color in NE idle animation frames.

## 4.1.2

* Images optimization. File sizes reduced over 90%.

## 4.1.1

* Individual unit advancement resources are now compatible with the entire
  modification, further improving the modding support.

## 4.1.0

* Saurian Spearwoman and Warden ranged attack icons changed to `spear-thrown.png`
  with a fallback to `spear.png` in Wesnoth <=1.16.1.
* Improved modding support. Now the modification is fully compatible with eras
  and campaigns that load the unit advancements as a resource.

## 4.0.0

![Saurian Seer](images/units/saurians/seer/seer.png)
* A new Saurian Seer unit (Lv3).
  An advancement of the Saurian Soothsayer.
* Saurian Soothsayer's experience necessary to level up decreased to 60.
* Translation files should now be correctly picked up by the game client.
* Saurian Prophet stat changes.
  * Cost increased to 51.
* Saurian Spearwoman stat changes.
  * HP decreased to 41.
  * Cost decreased to 24.
* Saurian Warden stat changes.
  * Ranged damage increased to 12-3.
  * Cost increased to 46.
* Tweaked Saurian Spearwoman and Saurian Warden base sprite placements
  to be more in line with Saurian Skirmisher.
* Modding support. Additional advancements are now available as resources.

## 3.0.0

* Campaign support.
* Saurian Oracle's experience necessary to level up increased to 66.
* Saurian Prophet sprite palette adjustments and head replacement.

## 2.0.0

![Saurian Warden](images/units/saurians/warden/warden.png)
* A new Saurian Warden unit (Lv3).
  An advancement of the Saurian Spearwoman.
* Saurian Spearwoman idle animations fix.
* Saurian Spearwoman stat changes.
  * HP increased to 43.
  * Melee damage increased to 10-2.
  * Cost decreased to 25.
  * Experience necessary to level up decreased to 55.
  * Advancement changed to Saurian Warden. AMLA settings removed.
* Saurian Prophet stat changes.
  * HP increased to 43.
* `en_GB` translation removal due to no notable differences with `en_US`.

## 1.0.0

![Saurian Spearwoman](images/units/saurians/spearwoman/spearwoman.png)
* A new Saurian Spearwoman unit (Lv2).
  An alternative advancement of the Saurian Skirmisher.

![Saurian Prophet](images/units/saurians/prophet/prophet.png)
* A new Saurian Prophet unit (Lv3).
  An advancement of the Saurian Oracle.
* Example British translation.
* Polish translation.

# Changelog

This file tracks notable changes to **psychrometricsExt**. The format is based on
[Keep a Changelog], and this project adheres to [Semantic Versioning].

[Keep a Changelog]: https://keepachangelog.com/ "Keep a Changelog"
[Semantic Versioning]: https://semver.org/ "Semantic Versioning"

## Unreleased

[View Changes](https://github.com/NREL/psychrometricsExt/compare/main...develop)

*This is the first version to strictly follow the semantic versioning rules.*

### Added

- This changelog
- `psychSolver()` calculates all pyschrometric properties with flexible inputs
- More options to calculate pyschrometric properties from different inputs: 
  - Dew point: `dewPoint()`, `dewPoint2()`, `dewPoint3()`
  - Humidity ratio: `humidityRatio()`, `humidityRatio2()`, `humidityRatio3()`,
    `humidityRatio4()`
  - Relative humidity: `relativeHumidity()`, `relativeHumidity2()`,
    `relativeHumidity3()`
- Magnus approximation for dew point: `dewPointMagnus()`
- Stull approximation for wet bulb: `wetBulbStull()`
- `moistAirSpecificVolume()` calculates the specific volume of moist air
- `saturationHumidityRatio()` calculates the humidity ratio of saturated moist
  air
- `dryAirSpecificHeat()` and `waterVaporSpecificHeat()` (to complement
  `moistAirSpecificHeat()`)
- `dryAirSpecificEnthalpy()` (to complement `moistAirSpecificEnthalpy()`)
- `glycolWaterBlendProps()` calculates the physical properties of a glycol-water
  blend (mixture) for a specific glycol concentration and fluid temperature
- `specificEnthalpyUnitConvert()` convert between SI and IP units of specific
  enthalpy, automatically handling the difference in the zero reference point

### Changed

- Reformulated many functions to reduce duplicated math by calling each other
- Renamed/renumbered several functions to reflect calculation order. **These are
  breaking changes.** Check the function signatures for which functions accept
  which input states.
  - Version 1.x `dewPoint()` became `dewPoint2()`
  - Version 1.x `humidityRatio()` became `humidityRatio3()`
  - Version 1.x `relativeHumidity()` became `relativeHumidity3()`
- Renamed `moistAirEnthalpy()` to `moistAirSpecificEnthalpy()` (which more
  precisely describes what it calculates)
- Renamed `stdPressure()` to `standardPressure()`
- Renamed `stdTemp()` to `standardTemp()`
- Updated documentation throughout
- The "Alliance for Sustainable Energy" is now the "Alliance for Energy
  Innovation"

### Deprecated

- The old function names `stdPressure()` and `stdTemp()` still work, but will
  log deprecation warnings

## [v1.4.3] (2021-12-02)

[v1.4.3]: https://github.com/NatLabRockies/psychrometricsExt/releases/tag/v1.4.3

[View Changes](https://github.com/NatLabRockies/psychrometricsExt/compare/v1.4.2...v1.4.3)

### Added

- Basic extension documentation
- `stdTemp()` and `stdPressure()` now assume sea level (0m) if elevation is not
  specified

## [v1.4.2] (2021-12-01)

[v1.4.2]: https://github.com/NatLabRockies/psychrometricsExt/releases/tag/v1.4.2

[View Changes](https://github.com/NatLabRockies/psychrometricsExt/compare/v1.4.1...v1.4.2)

### Changed

This is a minor release that further tweaks the `psychrometricsExt` dependencies
for compatibility with both SkySpark 3.0.x and SkySpark 3.1.x. Nothing in the
functions changed in this release.

## [v1.4.1] (2021-10-27)

[v1.4.1]: https://github.com/NatLabRockies/psychrometricsExt/releases/tag/v1.4.1

[View Changes](https://github.com/NatLabRockies/psychrometricsExt/compare/v1.4...v1.4.1)

### Changed

This is a minor release that recompiles `psychrometricsExt` for compatibility
with SkySpark 3.1.x. **Because the dependencies have been updated, this build
may not work with SkySpark 3.0.x!** Nothing in the functions changed in this
release.

## [v1.4] (2020-01-03)

[v1.4]: https://github.com/NatLabRockies/psychrometricsExt/releases/tag/v1.4

[View Changes](https://github.com/NatLabRockies/psychrometricsExt/compare/v1.3.1...v1.4)

### Added

- Tag def for `psychrometrics` (to avoid SkySpark package warnings)
- `waterDensity()` function
- `waterSpecificHeat()` function

### Changed

- To improve organization, `wetBulb()` now uses an `opts` dict instead of
  discrete options. **This is a breaking syntax change if you are using the
  fine-tuning options of wetBulb.**
- Various documentation updates

## [v1.3.1] (2018-02-27)

[v1.3.1]: https://github.com/NatLabRockies/psychrometricsExt/releases/tag/v1.3.1

[View Changes](https://github.com/NatLabRockies/psychrometricsExt/compare/v1.3...v1.3.1)

### Changed

- Updated license from GPL to BSD-3

## [v1.3] (2018-02-27)

[v1.3]: https://github.com/NatLabRockies/psychrometricsExt/releases/tag/v1.3

[View Changes](https://github.com/NatLabRockies/psychrometricsExt/compare/v1.2.1...v1.3)

### Added

-  `moistAirSpecificHeat()` function for calculating specific heat

### Changed

- `wetBulb()` now returns NA (instead of null) on calculation failure
- All default (assumed) pressures now use `stdPressure()`
- Various documentation updates

### Fixed

- `moistAirEnthalpy()` output units

## [v1.2.1] (2017-01-09)

[v1.2.1]: https://github.com/NatLabRockies/psychrometricsExt/releases/tag/v1.2.1

[View Changes](https://github.com/NatLabRockies/psychrometricsExt/compare/v1.2...v1.2.1)

### Changed

- Updated build script for SkySpark Version 3

## [v1.2] (2016-02-20)

[v1.2]: https://github.com/NatLabRockies/psychrometricsExt/releases/tag/v1.2

[View Changes](https://github.com/NatLabRockies/psychrometricsExt/compare/v1.1...v1.2)

### Added

- Publish to [StackHub](https://stackhub.org/)
- `moistAirDensity()` function (complements `dryAirDensity()`

### Fixed

- Build instructions for Windows
- Documentation typos and formatting

## [v1.1] (2015-06-30)

[v1.1]: https://github.com/NatLabRockies/psychrometricsExt/releases/tag/v1.1

[View Changes](https://github.com/NatLabRockies/psychrometricsExt/compare/v1.0...v1.1)

### Changed

- Repackaged the psychometric functions as a SkySpark extension

## [v1.0] (2013-10-13)

[v1.0]: https://github.com/NatLabRockies/psychrometricsExt/releases/tag/v1.0

### Added

- Initial release
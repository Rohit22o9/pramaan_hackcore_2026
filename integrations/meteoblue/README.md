meteblue - # Meteoblue Integration

The Meteoblue integration provides historical and environmental weather data for PRAMAAN field locations.

The integration is used by the Weather Agent to obtain weather information that can be associated with crop observations, product applications, and field outcomes.

## Purpose

The Meteoblue integration is intended to provide historical weather context for field-level analysis.

It can support:

- Historical weather retrieval
- Temperature information
- Precipitation information
- Humidity information
- Weather conditions during product application periods
- Weather conditions during crop observation periods
- Historical environmental context for efficacy analysis

## Integration Flow

```text
PRAMAAN Field Location
        |
        v
Weather Agent
        |
        v
Meteoblue Integration
        |
        v
Meteoblue Weather Data
        |
        v
Data Normalization
        |
        v
Weather Context
        |
        v
Efficacy Analytics Agentre
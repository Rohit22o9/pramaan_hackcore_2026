# Weather Agent

The Weather Agent is responsible for collecting, processing, and providing weather and forecast information relevant to agricultural field observations.

It provides environmental context that can be combined with crop observations, product applications, and field outcomes to support efficacy analysis and evidence-based recommendations.

## Purpose

The Weather Agent helps PRAMAAN understand how environmental conditions may relate to field outcomes.

It is designed to provide:

- Current weather information
- Historical weather information
- Weather forecasts
- Temperature data
- Rainfall and precipitation data
- Humidity information
- Other relevant environmental parameters
- Location-specific weather context

## Input

The Weather Agent can receive:

- GPS coordinates
- Field location
- Crop information
- Product application date
- Observation date
- Required historical period
- Forecast period

Example:

```text
Field Location:
Pune, Maharashtra

Crop:
Tomato

Application Date:
15 July

Observation Period:
15 July - 30 July

Field Location / GPS
        |
        v
Weather Agent
        |
        +----> Historical Weather API
        |
        +----> Forecast API
        |
        v
Weather Data
        |
        v
Data Normalization
        |
        v
Field-specific Weather Context
        |
        v
PRAMAAN Orchestrator
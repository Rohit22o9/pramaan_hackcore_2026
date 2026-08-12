# Efficacy Engine

The Efficacy Engine is the core analytical component of PRAMAAN responsible for evaluating the observed performance of biological agricultural products using validated field data.

It processes field observations, product application records, crop information, environmental conditions, and outcome data to calculate efficacy-related metrics and identify performance patterns.

## Purpose

The Efficacy Engine is designed to:

- Evaluate observed product performance.
- Process field-level efficacy data.
- Compare outcomes across different fields.
- Analyze product performance across crops and regions.
- Incorporate weather and environmental context.
- Identify seasonal performance patterns.
- Generate structured efficacy metrics.
- Provide analytical results to the Efficacy Analytics Agent.

## Position in the PRAMAAN Architecture

```text
Validated Field Data
        |
        v
Efficacy Analytics Agent
        |
        v
Efficacy Engine
        |
        +----> Data Preparation
        |
        +----> Efficacy Calculation
        |
        +----> Comparative Analysis
        |
        +----> Weather Context Analysis
        |
        +----> Seasonal Analysis
        |
        v
Efficacy Metrics
        |
        v
Efficacy Analytics Agent
        |
        v
Report & Recommendation Agent
Input

The Efficacy Engine works primarily with validated field records.

Potential inputs include:

Crop
Biological product
Field identifier
Region
Season
Product application date
Application details
Crop condition
Disease or pest observations
Weather conditions
Harvest outcome
Yield information
Historical field records

Example:

Crop:
Tomato

Product:
Biological Product A

Region:
Pune

Season:
Kharif

Application Date:
15 July

Observed Outcome:
Reduced disease symptoms

Harvest Outcome:
Improved
Processing Workflow
Validated Field Records
        |
        v
Input Validation
        |
        v
Data Preparation
        |
        v
Feature Extraction
        |
        v
Efficacy Calculation
        |
        v
Performance Analysis
        |
        +----> Regional Comparison
        |
        +----> Seasonal Comparison
        |
        +----> Crop Comparison
        |
        +----> Weather Relationship
        |
        v
Structured Efficacy Result
Data Preparation

Before calculating efficacy metrics, the engine prepares the input data.

The preparation stage can include:

Removing or handling incomplete records.
Checking required fields.
Normalizing numerical values.
Standardizing categorical values.
Aligning application and observation dates.
Associating weather information with field events.
Preparing historical records for comparison.

The engine should primarily use records that have passed the PRAMAAN validation workflow.

Efficacy Calculation

The engine evaluates product performance using measurable field outcomes.

Depending on the available data, metrics may include:

Observed outcome improvement
Disease symptom reduction
Crop condition improvement
Yield change
Product performance across observations
Number of supporting field records

A conceptual representation is:

Product Application
        +
Initial Field Condition
        +
Observed Field Condition
        +
Harvest Outcome
        |
        v
Performance Measurement
        |
        v
Efficacy Metric

The exact calculation methodology will be finalized after representative field data and measurable outcome definitions are available.

Comparative Analysis

The engine can compare observed product performance across different dimensions.

Product Comparison
Product A
    |
    +---- Field Outcomes
    |
    +---- Yield Outcomes
    |
    +---- Disease Outcomes

Product B
    |
    +---- Field Outcomes
    |
    +---- Yield Outcomes
    |
    +---- Disease Outcomes
Regional Comparison
Region 1
Region 2
Region 3
    |
    v
Regional Performance Analysis
Crop Comparison
Crop A
Crop B
Crop C
    |
    v
Crop-specific Performance Analysis
Weather Context

Environmental conditions can be incorporated into efficacy analysis.

Relevant variables may include:

Temperature
Rainfall
Humidity
Wind conditions
Other available weather parameters

Conceptually:

Product Application
        +
Crop
        +
Weather Conditions
        +
Field Outcome
        |
        v
Efficacy Analysis

Weather information provides contextual evidence for observed outcomes. The engine should not automatically interpret correlation as causation.

Seasonal Analysis

The Efficacy Engine can analyze field records across multiple seasons.

Season 1
    |
    v
Performance Data
    |
Season 2
    |
    v
Performance Data
    |
Season 3
    |
    v
Performance Data
    |
    v
Seasonal Performance Trend

This can help identify:

Repeated performance patterns
Seasonal variations
Crop-specific trends
Regional differences
Changes in observed outcomes
Example Input
{
  "crop": "Tomato",
  "product": "Biological Product A",
  "region": "Pune",
  "season": "Kharif",
  "application_date": "2026-07-15",
  "observations": {
    "before_application": "High disease symptoms",
    "after_application": "Reduced disease symptoms"
  },
  "weather": {
    "temperature": 28,
    "rainfall": "moderate",
    "humidity": "high"
  },
  "harvest_outcome": "improved"
}
Example Output
{
  "crop": "Tomato",
  "product": "Biological Product A",
  "region": "Pune",
  "season": "Kharif",
  "performance": "positive",
  "observed_outcome": "Reduced disease symptoms",
  "supporting_records": 25,
  "evidence_level": "moderate"
}

The final data schema and scoring methodology will be defined during implementation.

Evidence and Confidence

The engine should provide sufficient context for understanding how an efficacy result was derived.

Potential factors include:

Number of supporting field records
Quality of the records
Consistency of observed outcomes
Availability of baseline information
Availability of outcome measurements
Environmental context
Historical comparison

Example:

Performance:
Positive

Supporting Records:
25

Evidence Level:
Moderate

A higher number of observations does not automatically guarantee higher efficacy. Data quality and consistency must also be considered.

Integration with Weather Data

Weather information can be provided by the PRAMAAN Weather Agent.

Meteoblue
    |
    v
Weather Agent
    |
    v
Historical Weather Context
    |
    v
Efficacy Engine

Forecast information can also be provided through the CE Hub integration when required by the workflow.
```

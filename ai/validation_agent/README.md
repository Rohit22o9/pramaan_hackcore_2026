# Validation and Anomaly Agent

The Validation and Anomaly Agent is responsible for checking the quality, consistency, and reliability of field data collected by PRAMAAN.

It identifies incomplete, inconsistent, duplicate, suspicious, or potentially unreliable records before they are used for efficacy analysis and recommendations.

## Purpose

The Validation and Anomaly Agent helps PRAMAAN maintain reliable field evidence by:

- Validating incoming field records.
- Identifying missing or incomplete information.
- Detecting duplicate records.
- Identifying inconsistent observations.
- Detecting unusual or unexpected values.
- Checking relationships between related field data.
- Assigning validation status or anomaly indicators.
- Preventing unreliable records from directly influencing efficacy analysis.

## Input

The agent can receive data from multiple sources, including:

- Voice/NLP Agent outputs
- Vision Agent outputs
- Mobile application records
- Product application records
- Crop information
- Field observations
- GPS information
- Weather data
- Harvest outcomes
- Historical field records
- Efficacy analysis inputs

Example:

```text
Crop:
Tomato

Product:
Biological Product A

Application Date:
15 July

Field Location:
Pune

Observation:
Reduced disease symptoms

Weather:
High humidity

Harvest Outcome:
Improved
Field Data
    |
    v
Validation Agent
    |
    +----> Completeness Check
    |
    +----> Duplicate Check
    |
    +----> Consistency Check
    |
    +----> Range / Value Check
    |
    +----> Anomaly Detection
    |
    v
Validation Result
    |
    +----> Valid Record
    |
    +----> Record Requiring Review
    |
    +----> Anomalous Record
    |
    v
PRAMAAN Orchestrator
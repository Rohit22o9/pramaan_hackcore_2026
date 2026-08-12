# PRAMAAN Voice/NLP Agent

## Overview

The PRAMAAN Voice/NLP Agent processes voice and text inputs provided by farmers and field agents. Its primary purpose is to allow field observations to be recorded in the user's local language and converted into structured information that can be stored and used by other components of the PRAMAAN system.

The agent is designed for field environments where users may prefer speaking rather than typing detailed observations.

## Objectives

The Voice/NLP Agent is responsible for:

* Accepting voice or text input from the PRAMAAN mobile application.
* Converting spoken input into text.
* Processing multilingual and local-language observations.
* Extracting relevant agricultural information from the input.
* Converting unstructured observations into structured field records.
* Identifying missing or ambiguous information.
* Passing structured observations to the PRAMAAN Orchestrator.
* Supporting offline-first data capture by allowing voice records to be stored locally before synchronization.

## Input

The agent can receive information such as:

```text
Voice Recording
Text Input
Farmer Observation
Crop Information
Product Application Details
Disease or Pest Observation
Harvest Outcome
Field Notes
```

Example:

```text
"माझ्या शेतातील पिकाच्या पानांवर पिवळे डाग दिसत आहेत."
```

The agent processes the spoken or written observation and extracts relevant information for further analysis.

## Processing Workflow

```text
Farmer / Field Agent
        |
        v
Voice or Text Input
        |
        v
Speech-to-Text
        |
        v
Language Processing
        |
        v
Agricultural Information Extraction
        |
        v
Structured Field Observation
        |
        v
PRAMAAN Orchestrator
```

For a voice-based input, the processing flow is:

```text
Voice Recording
      |
      v
Speech Recognition
      |
      v
Text
      |
      v
Language Understanding
      |
      v
Entity and Observation Extraction
      |
      v
Structured Record
```

## Information Extraction

The agent can identify information relevant to agricultural field records, including:

* Crop
* Product
* Application activity
* Disease symptoms
* Pest observations
* Crop growth observations
* Weather-related observations
* Harvest information
* Yield observations
* Field conditions
* Dates and durations
* Location references

For example:

```text
Input:
"After applying the biological product, the leaves look healthier
and the crop growth has improved."

Extracted information:

Crop Condition: Improved
Product Applied: Biological product
Observed Outcome: Healthier leaves
Growth Observation: Improved
```

## Multilingual Processing

PRAMAAN is intended for field users who may communicate in regional or local languages.

The Voice/NLP Agent therefore provides a layer for:

* Local-language speech recognition
* Text normalization
* Translation where required
* Agricultural terminology extraction
* Structured information generation

The exact languages and speech models will depend on the available speech recognition and language processing services used during implementation.

## Offline-First Support

Voice observations may be recorded when internet connectivity is unavailable.

The planned workflow is:

```text
Voice Input
    |
    v
Local Device Storage
    |
    v
Connectivity Available
    |
    v
Synchronize with Backend
    |
    v
Voice/NLP Processing
    |
    v
Structured Field Record
```

This allows field agents to continue collecting observations without requiring continuous network connectivity.

## Integration with Other Agents

The Voice/NLP Agent works with the other PRAMAAN agents through the Orchestrator.

For example:

```text
Voice/NLP Agent
      |
      v
Crop / Product / Observation Data
      |
      +------> Weather Agent
      |
      +------> Trust & Anomaly Agent
      |
      +------> Efficacy Analytics Agent
      |
      v
Report & Recommendation Agent
```

The Voice/NLP Agent focuses on understanding the user's input. It does not independently make final efficacy or product recommendations.

## Output

The agent produces structured information that can be consumed by downstream components.

Example:

```text
{
  "crop": "Wheat",
  "observation": "Yellow spots on leaves",
  "observation_type": "Disease/Pest",
  "product_applied": true,
  "language": "local_language",
  "source": "voice"
}
```

The exact schema will be finalized during backend implementation.

## Error Handling

The agent should handle:

* Unclear speech
* Background noise
* Unsupported language
* Incomplete observations
* Ambiguous agricultural terms
* Failed speech recognition
* Missing required information

When important information cannot be reliably extracted, the system should flag the observation for clarification rather than generating unsupported information.

## Technology

The planned implementation may use:

* Python
* Gemini
* Speech-to-text services
* Google Agent Development Kit (ADK)
* FastAPI
* Flutter/Dart for mobile-side voice capture

The final speech recognition and language processing services will be selected based on availability, accuracy, latency, and hackathon implementation constraints.

## Integration with PRAMAAN

The Voice/NLP Agent forms the language interface between field users and the PRAMAAN AI system.

```text
PRAMAAN Flutter App
        |
        v
Voice / Text Input
        |
        v
Voice/NLP Agent
        |
        v
Structured Field Observation
        |
        v
PRAMAAN Orchestrator
        |
        +-------------------+
        |                   |
        v                   v
Weather Agent       Efficacy Analytics
        |                   |
        +---------+---------+
                  |
                  v
        Reports & Recommendations
```

## Planned Implementation

The initial implementation will focus on:

1. Capturing voice input from the Flutter application.
2. Supporting local-language field observations.
3. Converting speech into text.
4. Extracting agricultural entities and observations.
5. Generating a structured field record.
6. Sending the record to the PRAMAAN Orchestrator.
7. Handling unclear or incomplete observations.
8. Supporting synchronization of offline voice records when connectivity becomes available.

## Future Extensions

Future versions can include:

* Improved regional-language support
* Agricultural terminology adaptation
* Voice-based conversational field logging
* Context-aware follow-up questions
* Voice confirmation of extracted information
* Improved speech recognition for noisy field environments
* Domain-specific language models
* Continuous improvement using validated field observations

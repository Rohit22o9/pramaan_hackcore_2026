# Vision Agent

The Vision Agent is responsible for analyzing crop and field images submitted by farmers or field agents. It extracts visual information from images and converts it into structured observations that can be used by the other PRAMAAN agents.

## Purpose

The Vision Agent helps PRAMAAN capture visual field evidence such as:

- Crop condition
- Visible crop stress
- Pest or disease symptoms
- Plant growth condition
- Product application evidence
- Harvest or field outcome evidence
- Other visually observable field conditions

The agent is designed to complement voice and text-based field observations with image-based evidence.

## Input

The Vision Agent can receive:

- Crop images
- Plant images
- Field images
- Product application images
- Pest or disease images
- Harvest outcome images
- Images captured through the PRAMAAN mobile application

Example input:

```text
Image:
- Crop: Tomato
- Region: Pune
- Observation stage: Crop observation
- Image: farmer/field-agent captured photograph
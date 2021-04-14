# Analyzing tools validating security policy

This set of tools proesses the whitelist provided in this repository.

**Stage 1** downloads the corresponding files of the repo links and
  stores each file by its ID in the "data" folder.

**Stage 2** searches for RFC 7468 compliant PEM encoded material and
  extracts it into the "material" folder, referencing its ID and an
  index for each input file.

**Stage 3** verifies if the extracted material is indeed a well-formed
  PEM file and creates a report.
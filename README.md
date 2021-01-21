# GBDK GitHub Action Builder

![Example Workflow](https://github.com/wujood/gbdk-2020-github-builder/workflows/Example%20Workflow/badge.svg)

This action builds gbdk projects with gcc.

## Inputs

### `subdirectory`

The subfolder where the sources are located. Default is `"./"`.

## Example usage

```
# action.yml
name: 'GBDK Builder'
description: 'Build gbdk projects'
inputs:
  subdirectory:
    description: 'Path to sources'
    required: false
    default: '.'
runs:
  using: 'docker'
  image: 'Dockerfile'
  args:
    - ${{ inputs.subdirectory }}
```

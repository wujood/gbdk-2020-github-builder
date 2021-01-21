# GBDK GitHub Action Builder

This action builds gdbk projects with gcc.

## Inputs

### `subdirectory`

The subfolder where the sources are located. Default is `"./"`.

## Example usage

```
# action.yml
name: 'GDBK Builder'
description: 'Build gdbk projects'
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
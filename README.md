# GBDK GitHub Action Builder

![Example Workflow](https://github.com/wujood/gbdk-2020-github-builder/workflows/Example%20Workflow/badge.svg)

This action builds gbdk projects with gcc.

## Inputs

### `subdirectory`

The subfolder where the sources are located. Default is `"./"`.

## Example usage

```
name: Example Workflow
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    name: Build gbdk project
    steps:
    - name: Checkout project
    - uses: actions/checkout@v2
    - name: Build
      uses: wujood/gbdk-2020-github-builder
      with:
        subdirectory: ./test-sources
```

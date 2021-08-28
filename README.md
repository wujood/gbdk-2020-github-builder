# GBDK GitHub Action Builder

![Example Workflow](https://github.com/wujood/gbdk-2020-github-builder/workflows/Example%20Workflow/badge.svg)

This action builds gbdk projects with gcc.

## Inputs

### `subdirectory`

The subfolder where the sources are located. Default is `"./"`.

## Example usage

```yml
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

## Upload result 
```yml
name: Example Release
on:  
  release:
    types: 
      - created # This triggers once you create a release from github, not from tagging a commit
jobs:
  test:
    runs-on: ubuntu-latest
    name: Build gbdk project
    steps:
    - name: Checkout project
      uses: actions/checkout@v2
    - name: Build
      uses: wujood/gbdk-2020-github-builder
      with:
        subdirectory: ./test-sources
    - name: Upload binary to release
      uses: svenstaro/upload-release-action@v2
      with:
        repo_token: ${{ secrets.GITHUB_TOKEN }}
        file: ./test-sources/game.gb # Result file from build is called game.gb
        asset_name: ROM # Rename this to what ever you want
        tag: ${{ github.ref }}
```

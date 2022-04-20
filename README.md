# GBDK GitHub Action Builder

<a href="https://github.com/gbdk-2020/gbdk-2020"><img src="https://img.shields.io/github/v/release/wujood/gbdk-2020-github-builder?label=Latest%20Release&logo=github" /></a>
<a href="https://github.com/gbdk-2020/gbdk-2020"><img src="https://img.shields.io/badge/GBDK--Version-4.0.6-brightgreen" /></a>

![Example Workflow](https://github.com/wujood/gbdk-2020-github-builder/workflows/Example%20Workflow/badge.svg)

This action builds [gbdk-2020](https://github.com/gbdk-2020/gbdk-2020) projects with gcc.

## Inputs

### `subdirectory`

The subfolder where the sources are located. Default is `"./"`.

### `output-name`

Rename the output file. The name should no contain special characters. Default is `game`.

### `source`

Specifies the source name relative to the subdirectory. Default is `main.c`

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
      uses: wujood/gbdk-2020-github-builder@1.0.7
      with:
        subdirectory: ./test-sources # Define the source folder. Default is ./
        output-name: your-game # Rename the output file. Default is game
        source: main.c # Main source file of your project. Deafult is main.c
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
      uses: wujood/gbdk-2020-github-builder@1.0.7
      with:
        subdirectory: ./test-sources
    - name: Upload binary to release
      uses: svenstaro/upload-release-action@v2
      with:
        repo_token: ${{ secrets.GITHUB_TOKEN }}
        file: ./test-sources/game.gb # Result file from build is called game.gb by default. Rename it with the output-name parameter.
        asset_name: ROM # Rename this to what ever you want
        tag: ${{ github.ref }}
```

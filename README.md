# github-action-upload-bintray

Github action to upload files to JFrog Bintray via the [Bintray REST API](https://bintray.com/docs/api/).


## Example

```
name: Example workflow yml

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1

    - name: Upload deb package to Bintray
      uses: bpicode/github-action-upload-bintray@master
      with:
        file: ./path/to/example-package_1.0_amd64.deb
        api_user: example-user
        api_key: ${{ secrets.BINTRAY_API_KEY }} # An API key can be obtained from the user profile page.
        gpg_passphrase: ${{ secrets.BINTRAY_GPG_PASSPHRASE }} # Optional, for this to work Bintray requires a GPG public/private keypair configured for the repository owner (individual or organization).
        repository_user: example-user
        repository: my_repository
        package: example-package
        version: '1.0'
        upload_path: pool/main/m # Typical for debian repository layout
        publish: 1
        calculate_metadata: true # Schedule metadata calcuation after upload
        deb_distribution: stretch,buster,sid
        deb_component: main
        deb_architecture: amd64
```
## Inputs and Outputs

See [action.yml](action.yml).

## Feedback, Suggestions, Contributions, Known Limitations

Feel free to file an issue, open a pull request, etc.

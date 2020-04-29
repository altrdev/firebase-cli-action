# GitHub Action for Firebase CLI

The GitHub Action for [Firebase](https://firebase.com) and wraps the [firebase-tools CLI](https://firebase.google.com/docs/cli).
Contains ESLint feature.

## Usage

### Example usage

An example step you can add to your workflow which deploys to Firebase:

```yml
- name: Firebase Action
  uses: altrdev/firebase-cli-action@v0.0.1
  env:
    PROJECT_ID: "your-project-id"
    FIREBASE_TOKEN: ${{ secrets.FIREBASE_TOKEN }}
  with:
    args: deploy
```

### Environment variables
- `FIREBASE_TOKEN` - **Required** Firebase access token
  - You can retrieve a token with `firebase login:ci`
  - Set a new secret `FIREBASE_TOKEN` in GitHub. Please see the [Actions docs](https://help.github.com/en/articles/virtual-environments-for-github-actions#creating-and-using-secrets-encrypted-variables)

- `PROJECT_ID` - **Optional** Firebase/Google Cloud project ID

## License

This project are released under the [Apache 2.0](LICENSE).

# SwiftLintConfigs

This repo contains a baseline SwiftLint configuration that can be referenced from a local SwiftLint configuration.

## Usage

If you are using SwiftLint 0.42.0 or later, you can reference this remote configuration in your local `.swiftlint.yml` configuration:

```yaml
parent_config: https://raw.githubusercontent.com/JamitLabs/SwiftLintConfigs/stable/swiftlint.yml
```

If you don't want automatic updates as soon as the configuration gets changed, you may specify a version (please look up the current version number in the `versions` folder):

```yaml
parent_config: https://raw.githubusercontent.com/JamitLabs/SwiftLintConfigs/stable/versions/1/swiftlint.yml
```

Please note that SwiftLint will still allow you to customize your config, as the `parent_config` is only taken into account iff there are no conflicting local modifications. For instance, you may want to adjust the configuration of the `file_header` rule:

```yaml
file_header:
  required_pattern: \/\/ Copyright © \d{4} YourCompanyName\. All rights reserved\.
```

## Contributing (JamitLabs employees)

For any changes, please open a PR and mark it with one of the following labels:

- **Pending decision**, if there isn't a decision in favor of this change yet. Feel free to create such a PR even if there hasn't been any discussion on the change yet.
- **Accepted**, if there's already a decision in favor of this change. If the CI pipeline passes, the change can be merged.
- **Other**, for all other changes: Those that don't update the SwiftLint configurations. E. g. use this when suggesting changes to the README.

For any changes to the configuration file provided by this repository, please adhere to the following versioning guide:

1. Edit the `swiftlint.yml` file with your suggested changes.
2. Copy the `swiftlint.yml` file.
3. Go to the `versions` folder, create a new folder with a version number bumped by 1. E. g. when the current highest version folder is `versions/4`, create a new folder called `versions/5`.
4. Paste the `swiftlint.yml` that you copied in step 2 into the new folder that you created in step 3.

When opening up a PR, the CI will check if the top-level `swiftlint.yml` file matches the latest version's `swiftlint.yml` file.

Here's the current CI status: <a href="https://app.bitrise.io/app/a356826311a2ce54"><img src="https://app.bitrise.io/app/a356826311a2ce54/status.svg?token=59y8Ng_N8FGVnYcqmsk0Fw&branch=stable"
         alt="Build Status"></a>

## Contributing (Other people)

This is an internal project of our company, so chances of functional changes from outside the company being accepted are relatively low. However, if you spot any mistakes, e. g. false positives in the `custom_rules` specifications, pull requests are very much welcomed! Also, feel free to use this repository, its structure and its contents as a starting point for your own repository with remote SwiftLint Configurations!

## License
This library is released under the [MIT License](http://opensource.org/licenses/MIT). See [LICENSE](https://github.com/JamitLabs/SwiftLintConfigs/blob/stable/LICENSE) for details.

# How to add Calabash to a React Native project

This is a very simple example of a React Native project with Calabash installed on the iOS project. See the Calabash official tutorial on https://github.com/calabash/calabash-ios/wiki/Tutorial%3A-Link-Calabash-in-Debug-config

## (Optional) Create and install the React Native project

```
react-native init RNCalabashDemo
cd RNCalabashDemo
npm install
```

You can launch the app:

```
open ios/RNCalabashDemo.xcodeproj #and press Play in XCode.
```

## Add Calabash in debug config

Each step is a separate commit of this git repository.

### Link CFNetwork

See [the Calabash official tutorial](https://github.com/calabash/calabash-ios/wiki/Tutorial%3A-Link-Calabash-in-Debug-config)

### Download calabash.framework

Create the Gemfile as explained on [the Calabash official tutorial](https://github.com/calabash/calabash-ios/wiki/Tutorial%3A-Link-Calabash-in-Debug-config)

Then (this should be added to your project installation README.):

```
cd ios
bundle
bundle exec calabash-ios download
```

Add calabash.framework to your `.gitignore`:

```
# Calabash iOS
#
ios/calabash.framework/
```

### Link calabash.framework

See https://github.com/calabash/calabash-ios/wiki/Tutorial%3A-Link-Calabash-in-Debug-config

### Generate the features directory

```
cd ios
bundle exec calabash-ios gen
```

### Launch cucumber

```
bundle exec cucumber
```

## Add and run simple tests

See `sample_steps.rb` and `sample.feature`.

## About

Check our open source React Native repositories!

 * https://github.com/bamlab/rn-camera-roll
 * https://github.com/bamlab/react-native-image-resizer/

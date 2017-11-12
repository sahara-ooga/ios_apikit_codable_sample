# ios\_apikit\_codable\_sample
api access sample using APIKit,codable

## Hide API keys
Hide api keys using cocoapods-key, cocoapods plugin.

### 1. `.env`file
`accessKey="value"`

### 2. `Podfile`
NOTE: If you want to use cocoapods key in unit tests, you have to write in test terget.

```
target 'ios_apikit_codable_sample' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ios_apikit_codable_sample
  plugin 'cocoapods-keys', {
  :project => "ios_apikit_codable_sample",
  :keys => [
    "accessKey"
]}

  target 'ios_apikit_codable_sampleTests' do
    inherit! :search_paths
    # Pods for testing
    plugin 'cocoapods-keys', {
      :project => "ios_apikit_codable_sampleTests",
      :keys => [
        "accessKey"
    ]}
  end

end
```

### 3. `pod install`

### 4. Confirmation
#### `pod keys`
`pod keys` displays keys.
 
```
$ pod keys
Keys for ios_apikit_codable_sample
 └  accessKey - 

```

### 5. Usage
Check `Pods/Development Pods/Keys`. If succeeded, *hogehoge*Keys.h file is generated. The header file show key name:

```
@interface Ios_apikit_codable_sampleKeys : NSObject
```

Code like this:

```
import Keys

...

let keys = Ios_apikit_codable_sampleKeys()
print(keys.accessKey)	//value
```
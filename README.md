# ios\_apikit\_codable\_sample
API access sample using APIKit,codable.

## Installation
### APIKit
1. In `Podfile`, `pod 'APIKit', '~> 3.1'`.
1. And `$ pod install`. 

## Hide API keys
Hide api keys using cocoapods-key, that is cocoapods plugin.

### 1. Create `.env`file
`accessKey="value"`

### 2. Edit `Podfile`
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

### 3. `$ pod install`

### 4. Confirmation
#### `$ pod keys`
`pod keys` displays keys.
 
```
$ pod keys
Keys for ios_apikit_codable_sample
 └  accessKey - 

```

### 5. Usage
Check `Pods/Development Pods/Keys`. If succeeded, *hogehoge*Keys.h file is generated. The header file shows keys name:

```
@interface Ios_apikit_codable_sampleKeys : NSObject
```

Therefore, Codes like this:

```
import Keys

...

let keys = Ios_apikit_codable_sampleKeys()  //derived from hogehogeKeys.h
print(keys.accessKey)	//value
```

### Reference
[cocoapods-keysを複数人で使う方法(環境設定値のプロジェクトからの切り離し)](https://qiita.com/sgr-ksmt/items/8dfcf61f60a6ef557aa8#_reference-6b3a97aae66159e8d60b)
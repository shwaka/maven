[published page](https://shwaka.github.io/maven/)

## Usage
In `build.gradle.kts`:
```kotlin
repositories {
    maven(url = "https://shwaka.github.io/maven/")
}

dependencies {
    implementation("com.github.shwaka.example.mplib:example-mplib-jvm:0.1")
}
```

## Generate index.html for all directories
[Generate directory index](https://gist.github.com/glowinthedark/625eb4caeca12c5aa52778a3b4b0adb4)
`python generate_directory_index_caddystyle.py -r docs`

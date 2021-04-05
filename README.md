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

## Publish
Add `maven-publish` plugin to your `build.gradle.kts`:
```kotlin
plugins {
    `maven-publish`
}
```

Then you can publish in the following way:
```bash
cd /path/to/your/gradle/project
./gradlew publishToMavenLocal
cp -r ~/.m2/repository/com/github/shwaka/example /path/to/maven/repository/com/github/shwaka/example
# git commit and push
```

## Generate index.html for all directories
[Generate directory index](https://gist.github.com/glowinthedark/625eb4caeca12c5aa52778a3b4b0adb4)
`python generate_directory_index_caddystyle.py -r repository`

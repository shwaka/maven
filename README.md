[published page](https://shwaka.github.io/maven/com/github/shwaka/)

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

### directly publish
[Maven Publish Plugin](https://docs.gradle.org/current/userguide/publishing_maven.html)

```kotlin
publishing {
    repositories {
        maven {
            url = uri("/path/to/maven/repository")
            name = "MyMaven"
        }
    }
}
```

```bash
 ./gradlew publishAllPublicationsToMyMavenRepository
 ```
## Generate index.html for all directories
[Generate directory index](https://gist.github.com/glowinthedark/625eb4caeca12c5aa52778a3b4b0adb4)
`python generate_directory_index_caddystyle.py -r repository`

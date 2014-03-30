# misakura

A UNIX command to translate into [Misakura language](http://dic.nicovideo.jp/a/%E3%81%BF%E3%81%95%E3%81%8F%E3%82%89%E8%AA%9E)

## Install

### Mac OS X

misakura has [a available formula](https://gist.github.com/shiwano/9853149) for [Homebrew](http://brew.sh/), so you can install it with the following command:

```bash
brew install https://gist.github.com/shiwano/9853149/raw/misakura.rb
```

### Other Environments

misakura is a shell script, so you can install with adding the file to your `$PATH`.

## Usage

### Command Line

```bash
$ misakura 本日はお招きいただきありがとうございます
本日はおﾞぉおォおん招きいぃたらきぁあああ あぉりがとうごじゃいぃましゅぅぅぅ
```

```bash
$ echo たまには運動するのも気持ちいいですね | misakura
たまには運動しゅるのぉおおのぉおおもぎも゛ぢいぃ゛いぃ゛ぃれしゅぅぅぅね
```

### Git Hook

```bash
$ curl -L https://gist.github.com/shiwano/9855692/raw/commit-msg > .git/hooks/commit-msg
$ chmod +x .git/hooks/commit-msg
```

See also [commit-msg hook for misakura](https://gist.github.com/shiwano/9855692)

## Special Thanks

[みさくら語変換](http://yellow.ribbon.to/~sc/contents.html)

## Release History
 * 2014-03-29   v0.1.0   First release.

## License
Copyright (c) 2014 Shogo Iwano
Licensed under the MIT license.

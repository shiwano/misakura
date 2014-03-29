#!/usr/bin/env roundup

describe "misakura: A UNIX command to translate into Misakura language"

misakura="./misakura"

it_translate_string_data() {
  misakurized=`$misakura 本日はお招きいただきありがとうございます`
  test "${misakurized}" = '本日はおﾞぉおォおん招きいぃたらきぁあああ あぉりがとうごじゃいぃましゅぅぅぅ'
}

it_translate_text_data() {
  misakurized=`$misakura "「ごきげんよう」\n「ごきげんよう」\nさわやかな朝の挨拶が、澄みきった青空にこだまする。"`
  expected=`printf "「ごきげんよぉおお！んおっ！んおおーーっ！ 」\n「ごきげんみゃぁあ゛あ゛ぁ゛ぁぁあ！！」\nしゃわやかにゃ朝のぉおお挨拶が、澄みきった青空にこらましゅぅぅぅるのぉおお。"`
  test "${misakurized}" = "${expected}"
}

it_translate_pipe_string_data() {
  misakurized=`$misakura たまには運動するのも気持ちいいですね`
  test "${misakurized}" = 'たまには運動しゅるのぉおおのぉおおもぎも゛ぢいぃ゛いぃ゛ぃれしゅぅぅぅね'
}

it_translate_pipe_text_data() {
  misakurized=`$misakura "君からメールが届いた\n「元気？」って\nたった今元気になった"`
  expected=`printf "君からメールが届いぃたのぉおお\n「元気？」って\nたった今元気ににゃったのぉおお"`
  test "${misakurized}" = "${expected}"
}

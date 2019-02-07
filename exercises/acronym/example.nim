import re, sequtils, strutils

proc abbreviate*(phrase: string): string =
  let words = phrase.findall(re"[A-Z]+['a-z]*|['a-z]+")
  words.mapIt(it[0].toUpperAscii).join

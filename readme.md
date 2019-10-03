# HKU Scheme to LilyPond

### Introduction
This README briefly explains all functions included in the HKU LilyPond extension for Racket found at marcdinkum/csd.

### Table of Contents
1. `make-phrase`
1. `make-parallel`
1. `note-to-number`
1. `notes-to-numbers`
1. `transpose-natural`
1. `transpose-naturals`
1. `transpose-phrase`
1. `scale-length`
1. `merge-phrases`
1. `merge-phraselist`
1. `repeat-phrase`
1. `reverse-phrase`
1. `apply-transform`

## 1. `make-phrase`
### Description
Converts a given melody to a timed phrase.
### Arguments
- `melody` in note numbers
- `rhythm` in note length numbers (list must be the same length as the number of notes)
### Syntax
`(make-phrase melody rhythm)`

## 2. `make-parallel`
### Description
Combines two or more voices into a parallel structure.
### Arguments
- `phrases` accepts two or more phrases of note number/note length pairs
### Syntax
`(make-parallel phrases)`

## 3. `note-to-number`
### Description
Translates a note name to a note number.
### Arguments
- `note` is an absolute note as a note name (a, b, c etc)
### Syntax
`(note-to-number note)`

## 4. `notes-to-numbers`
### Description
Translates a list of absolute note names to note numbers.
### Arguments
- `notes` is a list of notes
### Syntax
`(notes-to-numbers notes)`

## 5. `transpose-natural`
### Description
Transposes a natural note symbolically.
### Arguments
- `note` is a natural note as a note name
- `steps` is the number of natural notes to transpose by (a + 2 = c)
### Syntax
`(transpose-natural note steps)`

## 6. `transpose-naturals`
### Description
Transposes a list of natural notes symbolically.
### Arguments
- `melody` is a list of natural notes
- `steps` is the amount of natural tones to transpose by
### Syntax
`(make-phrase melody rhythm)`

## 7. `transpose-note`
### Description
Transposes a natural note numerically.
### Arguments
- `note` is a natural note as a note number
- `steps` is the amount of tones to transpose by
### Syntax
`(transpose-note note)`

## 8. `transpose-phrase`
### Description
Transposes a `phrase` from `make-phrase` numerically.
### Arguments
- `phrase` is the output of `make-phrase`
- `steps` is the amount of tones to transpose by
### Syntax
`(make-phrase phrase steps)`

## 9. `scale-note-length`
### Description
Scales the length of a given note by a given factor.
### Arguments
- `note` is a note in the form of (`note` `length`)
- `factor` is the scale factor to be used
### Syntax
`(scale-note-length note factor)`

## 9. `scale-length`
### Description
Scales the lengths of all notes in a given phrase.
### Arguments
- `phrase` is a list of timed notes generated by `make-phrase`
- `factor`is the scale factor to be used
### Syntax
`(scale-length phrase factor)`

## 10. `merge-phrases`
### Description
Converts a given melody to a timed phrase.
### Arguments
- `melody` in note numbers
- `rhythm` in note length numbers (list must be the same length as the number of notes)
### Syntax
`(make-phrase melody rhythm)`

## 11. `merge-phraselist`
### Description
Converts a given melody to a timed phrase.
### Arguments
- `melody` in note numbers
- `rhythm` in note length numbers (list must be the same length as the number of notes)
### Syntax
`(make-phrase melody rhythm)`

## 12. `repeat-phrase`
### Description
Converts a given melody to a timed phrase.
### Arguments
- `melody` in note numbers
- `rhythm` in note length numbers (list must be the same length as the number of notes)
### Syntax
`(make-phrase melody rhythm)`

## 13. `reverse-phrase`
### Description
Converts a given melody to a timed phrase.
### Arguments
- `melody` in note numbers
- `rhythm` in note length numbers (list must be the same length as the number of notes)
### Syntax
`(make-phrase melody rhythm)`

## 14. `apply-transform`
### Description
Converts a given melody to a timed phrase.
### Arguments
- `melody` in note numbers
- `rhythm` in note length numbers (list must be the same length as the number of notes)
### Syntax
`(make-phrase melody rhythm)`
# HKU Scheme to LilyPond

### Introduction
This README briefly explains all functions included in the HKU LilyPond extension for Racket found at [marcdinkum/csd](https://github.com/marcdinkum/csd). If you discover any errors in this document, please contact me at the e-mail address on my profile.

### Table of Contents
1. [`make-phrase`](#make-phrase)
1. [`make-parallel`](#make-parallel)
1. [`note-to-number`](#note-to-number)
1. [`notes-to-numbers`](#notes-to-numbers)
1. [`transpose-natural`](#transpose-natural)
1. [`transpose-naturals`](#transpose-naturals)
1. [`transpose-note`](#transpose-note)
1. [`transpose-phrase`](#transpose-phrase)
1. [`scale-length`](#scale-length)
1. [`merge-phrases`](#merge-phrases)
1. [`merge-phraselist`](#merge-phraselist)
1. [`repeat-phrase`](#repeat-phrase)
1. [`reverse-phrase`](#reverse-phrase)
1. [`apply-transform`](#apply-transform)

## `make-phrase`

### Description
Converts a given melody to a timed phrase.
### Arguments
- `melody` in note numbers
- `rhythm` in note length numbers (list must be the same length as the number of notes)
### Syntax
`(make-phrase melody rhythm)`


## `make-parallel`

### Description
Combines two or more voices into a parallel structure.
### Arguments
- `phrases` accepts two or more phrases of note number/note length pairs
### Syntax
`(make-parallel phrases)`


## `note-to-number`

### Description
Translates a note name to a note number.
### Arguments
- `note` is an absolute note as a note name (a, b, c etc)
### Syntax
`(note-to-number note)`


## `notes-to-numbers`

### Description
Translates a list of absolute note names to note numbers.
### Arguments
- `notes` is a list of notes
### Syntax
`(notes-to-numbers notes)`


## `transpose-natural`

### Description
Transposes a natural note symbolically.
### Arguments
- `note` is a natural note as a note name
- `steps` is the number of natural notes to transpose by (a + 2 = c)
### Syntax
`(transpose-natural note steps)`


## `transpose-naturals`

### Description
Transposes a list of natural notes symbolically.
### Arguments
- `melody` is a list of natural notes
- `steps` is the amount of natural tones to transpose by
### Syntax
`(make-phrase melody rhythm)`


## `transpose-note`

### Description
Transposes a natural note numerically.
### Arguments
- `note` is a natural note as a note number
- `steps` is the number of semitones to transpose by
### Syntax
`(transpose-note note)`


## `transpose-phrase`

### Description
Transposes a `phrase` from `make-phrase` numerically.
### Arguments
- `phrase` is the output of `make-phrase`
- `steps` is the number of semitones to transpose by
### Syntax
`(make-phrase phrase steps)`


## `scale-note-length`

### Description
Scales the length of a given note by a given factor.
### Arguments
- `note` is a note in the form of (`note` `length`)
- `factor` is the scale factor to be used
### Syntax
`(scale-note-length note factor)`


## `scale-length`

### Description
Scales the lengths of all notes in a given phrase.
### Arguments
- `phrase` is a list of timed notes generated by `make-phrase`
- `factor`is the scale factor to be used
### Syntax
`(scale-length phrase factor)`


## `merge-phrases`

### Description
Merges two or more phrases into a single phrase.
### Arguments
- `phrase` is a list of note/length pairs. Note: this function needs at least two instances of `phrase` to execute
### Syntax
`(merge-phrases [phrases])`


## `merge-phraselist`

### Description
Merges a list of phrases into a single phrase.
### Arguments
- `phrases` is a list that contains two or more phrases.
### Syntax
`(merge-phraselist phrases)`


## `repeat-phrase`

### Description
Helper function. Repeats a phrase a given number of times.
### Arguments
- `phrase` is a phrase that should be repeated
- `repeats` is the number of times a given phrase should be repeated
### Syntax
`(repeat-phrase phrase repeats)`


## `reverse-phrase`

### Description
Reverses a given phrase.
### Arguments
- `phrase` is a phrase that should be reversed
### Syntax
`(reverse-phrase phrase)`


## `apply-transform`

### Description
Applies (a) transformation function(s) to a list of notes. Note: all arguments must be supplied, either with values or as an empty expression `'()`.
### Arguments
- `list` is a list of notes to transform
- `parallel-function` is the function to be applied to every parallel block
- `serial-function` is the function to be applied to every serial block
- `note-function` is the function to be applied to every note
### Syntax
`(apply-transform list parallel-function serial-function note-function)`
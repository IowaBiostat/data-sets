---
desc: Classification of e-mail into spam
rows: 3000
cols: 57
ext: rds
code: "readRDS(url('https://github.com/IowaBiostat/data-sets/raw/main/spam/spam.rds'))"
---

### Description

The concept of unsolicited commercial e-mail, or "spam", is diverse and includes
such examples as advertisements for products or web sites, get rich quick
schemes, chain letters, and pornography. This is a collection of spam and
non-spam e-mails assembled by George Forman at Hewlett-Packard in June and July
of 1999. Forman, together with a team of collaborators, also extracted 57
numeric features from the e-mails that could potentially be used to classify the
e-mails.

Note that this is a personal collection, and thus some of the features are
highly specific (e.g., the name "George", the phone number 650-857-7835, etc.).

### Format

* `y` is equal to 1 if spam, 0 if not
* `X` contains:
  * 48 continuous features of the form `word_freq_WORD` that record the percent
    of words in the e-mail that match WORD. For example, if `word_freq_you`
    equals 1.43, it means that 1.43% of words in the e-mail are "you".
  * 6 continuous features of the form `char_freq_CHAR` that record the percent
    of characters in the e-mail that match CHAR.
  * `capital_run_length_average`: average length of uninterrupted sequences of
    capital letters
  * `capital_run_length_longest`: length of longest uninterrupted sequence of
    capital letters
  * `capital_run_length_total`: sum of length of uninterrupted sequences of
    capital letters (i.e., the total number of capital letters in the e-mail)
* `Xtest` and `ytest`: 1601 additional instances. Training and testing sets were
  sampled at random from the original data set, which contained 4601 instances.

### Reference

I obtained this data set from the [UCI Machine Learning
Repository](http://archive.ics.uci.edu/ml/datasets/Spambase/). The data set was
originally created by Mark Hopkins, Erik Reeber, George Forman, and Jaap
Suermondt at Hewlett-Packard Labs in Palo Alto, CA.

# dotfiles

dots for mac.

## Setup Steps

Upgrade to latest macOS at App Store:

`macOS High Sierra` (2017/11/28時点)

Install Command Line Tools:

```
xcode-select --install
```

Create rsa key and register to [github settings](https://github.com/settings/keys):

```
ssh-keygen
cat ~/.ssh/id_rsa.pub | pbcopy
```

Clone dotfiles repo to home directory:

```
git clone git@github.com:chkkchy/dotfiles.git ~
```

Finally:

```
make install
```
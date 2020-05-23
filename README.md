These are the base dotfiles that I start with when I set up a new
environment. For more specific local needs I use the `*.local` files
described in the [`Local Settings`](#local-settings) section.

Setup
-----

To set up the `dotfiles` run the appropriate snippet in the terminal:

(⚠️  **DO NOT** run the `setup` snippet if you do not fully understand
[what it does][setup]. Seriously, **DO NOT** ⚠️)

| OS | Snippet |
|:---|:---|
| `Ubuntu` | `bash -c "$(wget -qO - https://raw.github.com/franklad/dotfiles/master/setup/setup.sh)"` |

That's it!

The setup process will:

* Download the dotfiles on your computer
  (by default it will suggest `~/dotfiles`).
* Create some additional [directories][dirs].
* Install applications / command-line tools for [`Ubuntu`][install ubuntu].

You can also use `GNU stow` to add any symlinks to `$HOME`. Simply run:

```bash
./stow.sh
```

Stow packages can be modified in the `stow.sh` file
```bash
...
packages=(
    #add or remove stuff
)
...
```

Customize
---------

### Local Settings

The `dotfiles` can be easily extended to suit additional local
requirements by using the following files:


#### `~/.gitconfig.local`

The `~/.gitconfig.local` file will be automatically included after
the configurations from `~/.gitconfig`, thus, allowing its content
to overwrite or add to the existing `Git` configurations.

__Note:__ Use `~/.gitconfig.local` to store sensitive information
such as the `Git` user credentials, e.g.:

```bash
[commit]

    # Sign commits using GPG.
    # https://help.github.com/articles/signing-commits-using-gpg/

    gpgsign = true

[user]

    name = FirstName LastName
    email = account@example.com
    signingkey = XXXXXXXX
```

<!-- Link labels: -->

[dirs]: setup/create_directories.sh
[fork]: https://help.github.com/en/github/getting-started-with-github/fork-a-repo
[git]: git
[install ubuntu]: setup/install
[setup script]: setup/setup.sh
[setup]: setup/setup.sh
[shell]: shell

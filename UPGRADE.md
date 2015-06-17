# Upgrading

_Note: Namespace and annotation values are upgraded in BEL files._
<br><br>
## Install Ruby (Windows)

1. Download [RubyInstaller](http://rubyinstaller.org/downloads).
   * Versions 1.9.3 and 2.x.x are supported.
2. Install RubyInstaller version.
   * Enable the _Add Ruby executables to your PATH_ option presented during installation.
3. Open a command prompt (Windows Key + R then type `cmd`).
   * Confirm installation by typing `ruby -v`.
   * The output should show the ruby version (e.g. `ruby 2.0.0p451 (2014-02-24) [x64-mingw32]`).

Continue with <a href="#install_bel_gem">Install the bel gem</a>.

## Install Ruby (Mac OSX)

_Option 1: Homebrew_

1. Install with homebrew by typing `brew install ruby`.
2. Add ruby commands to your PATH.
   * Add to .bash_profile.
     * `echo 'export PATH="/usr/local/Cellar/ruby/VERSION/bin:$PATH"' >> .bash_profile`
   * Update environment by sourcing .bash_profile.
     * `source ~/.bash_profile`
3. Confirm installation by typing `ruby -v`.

_Option 2: rbenv_

* _Install with homebrew._
   * `brew update`
   * `brew install rbenv ruby-build`
   * More details [here] (https://github.com/sstephenson/rbenv#homebrew-on-mac-os-x).

* _Install with git._
   * Clone rbenv repository.
     * `git clone https://github.com/sstephenson/rbenv.git ~/.rbenv`
   * Add to .bash_profile.
     * `echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile`
   * Enable shims and autocompletion from the terminal.
     * `echo 'eval "$(rbenv init -)"' >> ~/.bash_profile`
   * Clone ruby-build repository.
     * `git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build`
   * More details [here] (https://github.com/sstephenson/rbenv#installation).

Continue with <a href="#install_bel_gem">Install the bel gem</a>.

## Install Ruby (Linux)

_Option 1: Install via package manager._

* Example installation with Ubuntu.
   * Type `sudo apt-get install ruby` in the terminal.

_Option 2: rbenv_

* _Install with git._
   * Clone rbenv repository.
     * `git clone https://github.com/sstephenson/rbenv.git ~/.rbenv`
   * Add to .bash_profile.
     * `echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile`
   * Enable shims and autocompletion from the terminal.
     * `echo 'eval "$(rbenv init -)"' >> ~/.bash_profile`
   * Clone ruby-build repository.
     * `git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build`
   * More details [here] (https://github.com/sstephenson/rbenv#installation).

Continue with <a href="#install_bel_gem">Install the bel gem</a>.

<br><br>
<div id="install_bel_gem"></div>
## Install the _bel_ gem

1. Open a terminal or command prompt.
2. Use the `gem` command to install the `bel` gem.
   * `gem install bel`
3. You should see the following:

<pre>
    Fetching: bel-0.3.0.gem (100%)
    Successfully installed bel-0.3.0
    Parsing documentation for bel-0.3.0
    Installing ri documentation for bel-0.3.0
    1 gem installed
</pre>
4. Confirm you can access the *bel* command by type `bel` followed by the Enter/Return key.
5. Continue with <a href="#upgrading_bel">Upgrading BEL</a>.

<br><br>
<div id="upgrading_bel"></div>
## Upgrading BEL

1. Type `bel upgrade help` for details on the upgrade command.
2. Run command
   * Example 1 - convert a BEL file
     * `bel upgrade --bel small_corpus.bel --changelog "http://resource.belframework.org/belframework/testing/change_log.json"
   * Example 2 - convert BEL from standard in
     * `curl "http://resource.belframework.org/belframework/20131211/knowledge/small_corpus.bel" | bel upgrade --changelog "http://resource.belframework.org/belframework/testing/change_log.json"`
   * More details [here] (https://github.com/OpenBEL/bel.rb).
3. The upgraded BEL will be written to standard out.  Simply redirect to a file after that.
   * `bel upgrade ... > upgraded-version.bel`

<br><br>
## Issues

* If you have questions with `bel upgrade` or the `bel` gem please post to the [openbel-discuss] (https://groups.google.com/forum/#!forum/openbel-discuss) google group.
* If you encounter errors please post an issue to [github issues] (https://github.com/OpenBEL/bel.rb/issues).

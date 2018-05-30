# Haskell_beginner

## Haskellのインストール(Mac OS)
`curl -sSL https://get.haskellstack.org/ | sh` or `wget -qO- https://get.haskellstack.org/ | sh`
```
Using generic bindist...

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   619    0   619    0     0    531      0 --:--:--  0:00:01 --:--:--   532
100 7524k  100 7524k    0     0   584k      0  0:00:12  0:00:12 --:--:-- 1380k
Installing Stack to: /usr/local/bin/stack...

-------------------------------------------------------------------------------

Stack has been installed to: /usr/local/bin/stack

NOTE: You may need to run 'xcode-select --install' to set
      up the Xcode command-line tools, which Stack uses.

WARNING: '/Users/pyente/.local/bin' is not on your PATH.
    For best results, please add it to the beginning of PATH in your profile.
```

## Create Project
- `stack new project_name`:
```
Downloading template "new-template" to create project "beginner-project" in beginner-project/ ...

The following parameters were needed by the template but not provided: author-email, author-name, category, copyright, github-username
You can provide them in /Users/pyente/.stack/config.yaml, like this:
templates:
  params:
    author-email: value
    author-name: value
    category: value
    copyright: value
    github-username: value
Or you can pass each one as parameters like this:
stack new beginner-project new-template -p "author-email:value" -p "author-name:value" -p "category:value" -p "copyright:value" -p "github-username:value"

Looking for .cabal or package.yaml files to use to init the project.
Using cabal packages:
- beginner-project/

Selecting the best among 13 snapshots...

Downloaded lts-11.11 build plan.    
Selected mirror https://s3.amazonaws.com/hackage.fpcomplete.com/                Downloading root                                                                Selected mirror https://s3.amazonaws.com/hackage.fpcomplete.com/                Downloading timestamp                                                           Downloading snapshot                                                            Downloading mirrors                                                             Cannot update index (no local copy)                                             Downloading index                                                               Updated package index downloaded                                                Update complete                                                                 Populated index cache.    
* Matches lts-11.11

Selected resolver: lts-11.11
Initialising configuration using resolver: lts-11.11
Total number of user packages considered: 1
Writing configuration to file: beginner-project/stack.yaml
All done.
```
- `cd project_name`
- `stack setup`
```
Preparing to install GHC to an isolated location.
This will not interfere with any system-level installation.
Downloaded ghc-8.2.2.                                      
Installed GHC.                                                                 
clang: warning: argument unused during compilation: '-nopie' [-Wunused-command-line-argument]
clang: warning: argument unused during compilation: '-nopie' [-Wunused-command-line-argument]
stack will use a sandboxed GHC it installed
For more information on paths, see 'stack path' and 'stack exec env'
To use this GHC and packages outside of a project, consider using:
stack ghc, stack ghci, stack runghc, or stack exec
```
- `stack build`
```
[1 of 2] Compiling Main             ( /Users/pyente/.stack/setup-exe-src/setup-mPHDZzAJ.hs, /Users/pyente/.stack/setup-exe-src/setup-mPHDZzAJ.o )
[2 of 2] Compiling StackSetupShim   ( /Users/pyente/.stack/setup-exe-src/setup-shim-mPHDZzAJ.hs, /Users/pyente/.stack/setup-exe-src/setup-shim-mPHDZzAJ.o )
Linking /Users/pyente/.stack/setup-exe-cache/x86_64-osx/tmp-Cabal-simple_mPHDZzAJ_2.0.1.0_ghc-8.2.2 ...
clang: warning: argument unused during compilation: '-nopie' [-Wunused-command-line-argument]
clang: warning: argument unused during compilation: '-nopie' [-Wunused-command-line-argument]
Building all executables for `beginner-project' once. After a successful build of all of them, only specified executables will be rebuilt.
beginner-project-0.1.0.0: configure (lib + exe)
Configuring beginner-project-0.1.0.0...
clang: warning: argument unused during compilation: '-nopie' [-Wunused-command-line-argument]
beginner-project-0.1.0.0: build (lib + exe)
Preprocessing library for beginner-project-0.1.0.0..
Building library for beginner-project-0.1.0.0..
[1 of 2] Compiling Lib              ( src/Lib.hs, .stack-work/dist/x86_64-osx/Cabal-2.0.1.0/build/Lib.o )
[2 of 2] Compiling Paths_beginner_project ( .stack-work/dist/x86_64-osx/Cabal-2.0.1.0/build/autogen/Paths_beginner_project.hs, .stack-work/dist/x86_64-osx/Cabal-2.0.1.0/build/Paths_beginner_project.o )
Preprocessing executable 'beginner-project-exe' for beginner-project-0.1.0.0..
Building executable 'beginner-project-exe' for beginner-project-0.1.0.0..
[1 of 2] Compiling Main             ( app/Main.hs, .stack-work/dist/x86_64-osx/Cabal-2.0.1.0/build/beginner-project-exe/beginner-project-exe-tmp/Main.o )
[2 of 2] Compiling Paths_beginner_project ( .stack-work/dist/x86_64-osx/Cabal-2.0.1.0/build/beginner-project-exe/autogen/Paths_beginner_project.hs, .stack-work/dist/x86_64-osx/Cabal-2.0.1.0/build/beginner-project-exe/beginner-project-exe-tmp/Paths_beginner_project.o )
Linking .stack-work/dist/x86_64-osx/Cabal-2.0.1.0/build/beginner-project-exe/beginner-project-exe ...
clang: warning: argument unused during compilation: '-nopie' [-Wunused-command-line-argument]
clang: warning: argument unused during compilation: '-nopie' [-Wunused-command-line-argument]
beginner-project-0.1.0.0: copy/register
Installing library in /Users/pyente/Github/Haskell_beginner/beginner-project/.stack-work/install/x86_64-osx/lts-11.11/8.2.2/lib/x86_64-osx-ghc-8.2.2/beginner-project-0.1.0.0-4Rg77pQn0l3GdCaR2YRlJc
Installing executable beginner-project-exe in /Users/pyente/Github/Haskell_beginner/beginner-project/.stack-work/install/x86_64-osx/lts-11.11/8.2.2/bin
Registering library for beginner-project-0.1.0.0..
```
- `stack exec project_name-exe`
```
$ stack exec beginner-project-exe
someFunc
```

## After modify program
- `stack build`
- `stack exec project_name-exe`

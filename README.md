## Great job, Make

* Zero-second recompilation when nothing's
  changed. And only about 0.2 seconds of overhead
  running all our rules (assuming our rules are
  free).

     ```
     ± % time make
     make: Nothing to be done for `all'.
     make  0.00s user 0.00s system 76% cpu 0.006 total
     ± % time make -B >& /dev/null
     make -B >&/dev/null  0.21s user 0.06s system 98% cpu 0.275 total
     ```

* Amount of untrusted, and worse _JavaScript_,
  code that npm put onto my machine: zero

* Incremental recompilation for free. Parallel
  compilation for free.

* I can reuse the things I learned with any
  project, with any *nix machine from the past
  1000 years

## Jesus Christ, node

* uglify(1) doesn't print _anything_ when an error
  occurs. It also doesn't set an exit code. It
  also takes a _comma-delimited list_ instead of
  using `[-s FILE [-s FILE ...]]` like every other
  Unix command. It also prints out _everything_
  when it's succeeding, violating the "success
  means no output" rule of compilers.

* `coffee --map` can't print to stdout, even
  though `-c` can. Neither lets you choose the
  filename. `-o` sets the _directory_, violating
  every compiler convention. And if you have
  `a.js` and you compile `a.coffee` it'll just
  overwrite `a.js` without prompting.

* `npm install uglify` added so many goddamn lines
  to my scrollback with all sorts of dizzying
  unreadable colors.

* `node_modules` should be dotted but isn't.
  Right? It's a small thing, but goddamn does it
  feel arrogant.

* node(1) is the Eternal September of programming.
  It's all downhill from here. Expect to parse
  stdout to figure out if errors happen; expect to
  assert all the time that binaries guessed the
  right filename; expect all your programs to be
  rewritten to run atop a monoculture virtual
  machine run by a giant company that makes money
  of off user data, in a language managed by
  people that don't even pretend to be interested
  in the history, culture, or art of programming.
  Go underground. Write Perl or C or Haskell. Find
  me on a password-protected IRC. Share files
  with me. We'll build a new life, far away from
  here. When everything is ashes, our
  grandchildren will return and try to decrpyt our
  bitter poetry.

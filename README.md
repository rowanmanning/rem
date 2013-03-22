
Rem
===

Rem is a simple mixin for Sass which converts pixel values to rem values with a pixel fallback.

**Current Version:** *0.0.0*  
**Sass Support:** *Sass 3.2.5, Libsass*


Usage
-----

Use Rem with Sass:

```scss
@import "path/to/lib/rem";

body {
    @include rem(padding, 5px 10px);
}
```

compiles to

```css
body {
    padding: 5px 10px;
    padding: .5rem 1rem;
}
```

You can find more [examples in the tests][tests].


Development
-----------

In order to run all tests, you'll need to install the [Sass command line utility][sass] as well as have the [sassc][sassc] binary on your PATH. If you're on Windows, you'll need to install [Make][make].

Once you're set up, you can run the following commands:

```sh
$ make compile-c   # compile the test file with Libsass
$ make compile-rb  # compile the test file with Sass
$ make test-c      # test compiling with Libsass
$ make test-rb     # test compiling with Sass
$ make test        # run all tests
```

When no build target is specified, make will run `test`. This means you can use the following command for brevity:

```sh
$ make
```

Please run the tests before submitting a pull request.


License
-------

Copyright 2013, Rowan Manning  
Licensed under the [MIT][mit] license.



[make]: http://gnuwin32.sourceforge.net/packages/make.htm
[mit]: http://opensource.org/licenses/mit-license.php
[sass]: http://sass-lang.com/download.html
[sassc]: https://github.com/hcatlin/sassc
[tests]: test/test.scss
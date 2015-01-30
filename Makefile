source_dir := src
build_dir := build

# You'll need to switch to `shell` to do recursive
# globbing. But that's cool! Why reimplement
# recursive globbing if `find` already does it?
sources := $(wildcard $(source_dir)/*.coffee)

# We're going to link our src/ files into build/.
# We could also just cp if we were more paranoid
# about our compilers' modifying our source code;
# but links are more whimsical.
linked := $(patsubst $(source_dir)/%,$(build_dir)/%,$(sources))
$(linked): build/%.coffee: src/%.coffee
	mkdir -p build
	ln -f "$<" "$@"

compiled := $(linked:.coffee=.js)
$(compiled): %.js: %.coffee
	env OUTPUT="$@" ./bin/coffee2js "$<"

minified := $(build_dir)/all.js
$(minified): $(compiled)
	env OUTPUT="$@" ./bin/minify "$^"

.DEFAULT_GOAL := $(minified)

clean:
	[ -d build ] && rm -r build

# These targets don't create the files "clean" or
# "all" or etc.
.PHONY: clean all

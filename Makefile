
# Default target
all: test

# Compile Sass with Ruby library
compile-rb:
	@echo "Compiling Sass (Ruby)...";
	@echo "`sass ./test/test.scss`"  > ./test/actual-rb.css;
	@echo "  > Done";

# Compile Sass with C library
compile-c:
	@echo "Compiling Sass (C)...";
	@echo "`sassc ./test/test.scss`"  > ./test/actual-c.css;
	@echo "  > Done";

# Test that the CSS compiled with the Ruby library is as expected
test-rb: compile-rb
	@echo "Testing that actual-rb.css === expected.css";
	@[[ `diff -q ./test/actual-rb.css ./test/expected.css` == "" ]] && echo "  > All OK :)" || echo "  > Actual/expected are different :(";

# Test that the CSS compiled with the C library is as expected
test-c: compile-c
	@echo "Testing that actual-c.css === expected.css";
	@[[ `diff -q ./test/actual-c.css ./test/expected.css` == "" ]] && echo "  > All OK :)" || echo "  > Actual/expected are different :(";

# Test code compiled with both Ruby and C libraries
test: test-rb test-c

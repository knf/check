include("lib.jl")

f = :foo
b = "bar"
email_regex = "^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})"

function test_first()
	check_equal(1, 1, "Numbers are not equal")
	check_not_equal(1, 2, "Numbers are equal")
	check_type_of("string", String, "Types don't match")
	check_same(f, :foo, "Object is not same")
	check_not_same(f, b, "Object is same and should not be")
	check_match("email@host.com", email_regex, "No Match")
	check_no_match("spamhost.com", email_regex, "Matches and should not match")
	check_string("string", "Not a String")
	check_int(123, "Not an Integer")
end

function test_second()
	check_equal(1, 2, "Numbers are not equal")
	check_not_equal(2, 2, "Numbers are equal")
	check_type_of(2, String, "Types don't match")
	check_same(f, :food, "Object is not same")
	check_not_same(f, f, "Object is same and should not be")
	check_match("emailhost.com", email_regex, "No Match")
	check_no_match("spamhost@dd.com", email_regex, "Matches and should not match")
	check_string(2, "Not a String")
	check_int("string", "Not an Integer")
end

test_first()
test_second()


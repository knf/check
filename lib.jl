function check(func, msg...)
	try
		assert(func)
		println("Success.....")
	catch e
		println("Failure: $msg")
	end
end

function check_equal(arg1, arg2, msg...)
	check(isequal(arg1, arg2), msg)
end

function check_not_equal(arg1, arg2, msg...)
	check(!isequal(arg1, arg2), msg)
end

function check_type_of(obj, obj_type, msg...)
	check(isa(obj,obj_type), msg)
end

function check_same(arg1, arg2, msg...)
	check(is(arg1, arg2), msg)
end

function check_not_same(arg1, arg2, msg...)
	check(!is(arg1, arg2), msg)
end

function check_match(test_string, regex, msg...)
	if matches(r"$regex", test_string)
		println("Success.....")
		return true
	else
		println("Failure: $msg")
		return false
	end
end

function check_no_match(test_string, regex, msg...)
	if !matches(r"$regex", test_string)
		println("Success.....")
		return true
	else
		println("Failure: $msg")
		return false
	end
end

function check_string(string, msg...)
	check(isa(string,String), msg)
end

function check_int(int, msg...)
	check(isa(int,Int), msg)
end



#check_not_nil
#check_nothing_raised
#check_nothing_thrown
#check_raise




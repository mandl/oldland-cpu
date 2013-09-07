TP_SUCCESS	= 1
TP_FAILURE	= 2
TP_USER		= 4

function get_testpoint(pc)
	return testpoints[pc]
end

cycle_count = 0

function run_to_tp()
	while true do
		target.step()
		cycle_count = cycle_count + 1
		if _G['MAX_CYCLE_COUNT'] and cycle_count > MAX_CYCLE_COUNT then
			break
		end

		pc = target.read_reg(16)
		tp = get_testpoint(pc)

		if tp then
			return tp
		end
	end
end

function tp_type(typ)
        if tp.type == TP_SUCCESS then return "SUCCESS" end
        if tp.type == TP_FAILURE then return "FAILURE" end
        if tp.type == TP_USER then return "USER" end
        return "???"
end

function run_testpoints(expected_testpoints)
	for _, v in pairs(expected_testpoints) do
		tp = run_to_tp()
		if not tp or
		tp.type ~= v[1] or
		tp.tag ~= v[2] then
			print(string.format("unexpected testpoint %s:%u at %08x",
                                            tp_type(tp.type), tp.tag,
                                            target.read_reg(16)))
			return -1
		end

                print(string.format("hit tp %s:%u", tp_type(tp.type), tp.tag))

                if v[3] and v[3]() then return -1 end
	end

	return 0
end
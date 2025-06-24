function Header(el)
	if el.level == 1 then
		table.insert(el.content, 1, pandoc.RawBlock("latex", "\\clearpage"))
		return el
	end
end


def wrap(content, max_length = 71)
	lines = []
	oneline = ""
	content.split(/\s+/).each do |word|
		if oneline.size + word.size >= max_length
			lines.push(oneline) if oneline.size != 0
			oneline = word
		else
			oneline = oneline.size == 0 ? word : oneline + " " + word
		end
	end
	lines.push(oneline) if oneline.size != 0
	lines.join("\n")
end

def wrap2(content, max_length = 71)
	lines = []
	content.split("\n").each do |line|
		oneline = ""
		if line.size <= max_length
			lines.push(line)
		else
			line.split(/\s+/).each do |word|
				if oneline.size + word.size >= max_length
					lines.push(oneline)
					oneline = word
				else
					oneline = oneline.size == 0 ? word : oneline + " " + word
				end
			end
		end
		lines.push(oneline) if oneline.size > 0
	end
	lines.join("\n")
end

#!/usr/bin/env ruby


def wrap(content, max_length = 71)
	lines = []
	oneline = ""
	content.split(/\s+/).each do |word|
		if oneline.size + word.size >= max_length
			lines.push(oneline)
			oneline = word
		else
			oneline = oneline.size == 0 ? word : oneline + " " + word
		end
	end
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

# good
content1 = 'I first came across the term "mock object" a few years ago in the Extreme Programming (XP) community. Since then I\'ve run into mock objects more and more. Partly this is because many of the leading developers of mock objects have been colleagues of mine at ThoughtWorks at various times. Partly it\'s because I see them more and more in the XP-influenced testing literature.

But as often as not I see mock objects described poorly. In particular I see them often confused with stubs - a common helper to testing environments. I understand this confusion - I saw them as similar for a while too, but conversations with the mock developers have steadily allowed a little mock understanding to penetrate my tortoiseshell cranium.


This difference is actually two separate differences. On the one hand there is a difference in how test results are verified: a distinction between state verification and behavior verification. On the other hand is a whole different philosophy to the way testing and design play together, which I term here as the classical and mockist styles of Test Driven Development.

'

puts wrap(content1, 20)

# bad
content2 = '

def wrap(content, max_length = 71)
	lines = []
	oneline = ""
	content.split(/\s+/).each do |word|
		if oneline.size + word.size >= max_length
			lines.push(oneline)
			oneline = word
		else
			oneline = oneline.size == 0 ? word : oneline + " " + word
		end
	end
	lines.join("\n")
end


'

puts wrap2(content2, 40)



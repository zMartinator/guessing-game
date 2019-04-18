all: readme

readme:
	touch README.md
	echo "# Guessing Game by Zach" >> README.md
	echo "" >> README.md
	echo "## Last time make was run:" >> README.md
	echo "\`\`\`" >> README.md
	date >> README.md
	echo "\`\`\`" >> README.md
	echo "" >> README.md
	echo "## Number of lines of code in guessinggame.sh:" >> README.md
	echo "\`\`\`" >> README.md
	wc -l guessinggame.sh | grep '[[:digit:]]*' -o >> README.md
	echo "\`\`\`" >> README.md
clean:
	rm README.md
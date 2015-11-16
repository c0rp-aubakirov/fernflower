#!/bin/bash
# fernflower
function fernflower() {
	if [[ -d ~/projects/fernflower ]]; then
		java -jar ~/projects/fernflower $@
	else
		echo "\n\t\tThere is no fernflower project in projects folder"
		echo "\t\tDownloading"
		pushd ~/projects
		if git clone https://github.com/repo_name/fernflower.git ; then
			java -jar ~/projects/fernflower $@ 
		else
			echo "Problems while cloning repo. Run me again"
		fi
		popd
	fi
}



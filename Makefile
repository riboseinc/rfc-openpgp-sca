#
# Makefile to build Internet Drafts using docker image "paulej/rfctools".
#

SRC  := $(wildcard *.md)
TXT  := $(patsubst %.md,%.txt,$(SRC))
XML  := $(patsubst %.md,%.xml,$(SRC))
UID  := `id -u`
GID  := `id -g`
CWD  := `pwd`

# Ensure the xml2rfc cache directory exists locally
IGNORE := $(shell mkdir -p $(HOME)/.cache/xml2rfc)

all: $(TXT) $(HTML)

clean:
	rm -f $(TXT) $(XML)

# %.txt: %.md
# 	docker run --rm \
# 		--user=$(UID):$(GID) \
# 		-v $(CWD):/rfc \
# 		-v $(HOME)/.cache/xml2rfc:/var/cache/xml2rfc \
# 		paulej/rfctools \
# 		md2rfc $^

%.txt: %.md
	mmark -xml2 -page $^ > $@.xml && \
	xml2rfc --text $@.xml && \
	rm $@.xml && mv $@.txt $@

open:
	open *.txt

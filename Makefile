
USER=jayl

run:
	docker run -v /Users/${USER}/Desktop:/home/rstudio/Desktop -v /Users/${USER}/Documents:/home/rstudio/Documents -e PASSWORD=yourpassword --rm -p 8787:8787 wjlyerly/rserver:3.4.4

build:
	docker build -t wjlyerly/rserver:3.4.4 .

push:
	docker push wjlyerly/rserver

pull:
	docker pull wjlyerly/rserver

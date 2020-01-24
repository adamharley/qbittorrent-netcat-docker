FROM linuxserver/qbittorrent

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get install -y \
		netcat-traditional && \
	apt-get clean && \
	rm -rf \
		/tmp/* \
		/var/lib/apt/lists/*
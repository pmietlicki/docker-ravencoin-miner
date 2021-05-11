
FROM  pmietlicki/xmrig

# Configuration variables.
ENV POOL_URL    		rvn-eu1.nanopool.org:12222
ENV POOL_USER   		RG8Foh71fzgbrczHbUJSdWna6u4e7sgsr6
ENV POOL_PW     		rancher
ENV MAX_CPU   			100
ENV USE_SCHEDULER		false
ENV START_TIME			2100
ENV STOP_TIME			0600
ENV DAYS				Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday

# Set entrypoint
ENTRYPOINT ./script.sh ravencoin $POOL_URL $POOL_USER $POOL_PW $MAX_CPU $USE_SCHEDULER $START_TIME $STOP_TIME $DAYS
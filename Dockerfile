FROM beilber/steamcmd


ADD wrapper.sh /wrapper
ADD mount.cfg /mount.cfg

RUN \
  chmod +x /wrapper

VOLUME ["/root/steamcmd/appdir"]

ENTRYPOINT ["/wrapper"]

# Expose ports.
EXPOSE 27015
EXPOSE 27016

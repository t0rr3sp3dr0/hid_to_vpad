FROM wiiulegacy/core:0.1
COPY --from=wiiulegacy/dynamic_libs:0.1 /artifacts $DEVKITPRO/portlibs
COPY --from=wiiulegacy/libutils:0.1 /artifacts $DEVKITPRO/portlibs
RUN cd `mktemp -d` && \
    git clone https://github.com/Maschell/libgui.git . && \
    git checkout v0.1 && \
    7z x -y ./libs/portlibs.zip -o${DEVKITPRO} && \
    make -j8 && \
    make install
RUN cd `mktemp -d` && \
    git clone https://github.com/t0rr3sp3dr0/controller_patcher.git . && \
    make -j8 && \
    make install
COPY . .
RUN make -j8

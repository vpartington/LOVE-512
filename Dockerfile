FROM xebialabs/xl-deploy:8.5.0

USER 0
COPY resources/bin/run-in-container.sh ${APP_HOME}/bin/
RUN chgrp -R 0 ${APP_HOME}/bin/run-in-container.sh && \
    chmod -R g=u ${APP_HOME}/bin/run-in-container.sh && \
    chmod g+x ${APP_HOME}/bin/run-in-container.sh
USER 10001

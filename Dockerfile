FROM registry.jetbrains.team/p/prj/containers/projector-idea-c

USER root

RUN rm /projector/ide/bin/ide-projector-launcher.sh
ADD ide-projector-launcher.sh /projector/ide/bin/ide-projector-launcher.sh
RUN chmod +x /projector/ide/bin/ide-projector-launcher.sh

USER $PROJECTOR_USER_NAME

ENTRYPOINT ["/run.sh"]

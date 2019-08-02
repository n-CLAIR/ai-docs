.. _nsml fork:

Fork a session
--------------

    Usage:
        +------------------------------------------+
        | **nsml fork** *Options* SESSION_NAME     |
        +------------------------------------------+

    Description:
        session 을 fork 해서 새로운 세션으로 재생성합니다.

        .. note:: fork 가 제대로 동작하려면, 다음의 조건을 만족해야 합니다.

            1. entry 파일에서 :ref:`reserved arguments <reserved arguments>` 를 받을 수 있어야 합니다.

            2. :ref:`nsml.save <nsml.bind-save>` 와 :ref:`nsml.load <nsml.bind-load>` 가 정상적으로 동작해야 합니다.

            3. :ref:`nsml.paused <nsml.paused()>` 가 호출되어야 합니다.

    Example:
        .. code-block:: console

            nsml fork nsmlteam/mnist/4

    Options:
        -a, --args                  새로운 session 에 전달할 arguments 입니다.

                                    ex) nsml fork -a "--batch=1000 --lr=0.02" SESSION_NAME

        -c, --checkpoint            fork한 세션에서 불러올 모델의 checkpoint 를 지정합니다.

                                    ex) nsml fork -c 15 SESSION_NAME

        -g, --gpus                  할당받을 gpu 의 갯수를 입력합니다.

                                    ex) nsml fork -g 4 SESSION_NAME

        --shm-size string           필요한 share memory 사이즈입니다. (default '1G')

        --memory string             필요한 memory 사이즈입니다. (default '24G')

        --cpu                       사용할 cpu 갯수입니다. (default 2)

                                    ex) nsml fork --cpu 4 SESSION_NAME

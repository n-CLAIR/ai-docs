.. _nsml run:

Run a session
--------------

    Usage:
      +---------------------------+
      |  **nsml run** *Options*   |
      +---------------------------+

    Description:
        현재 위치의 파일들을 NSML server 로 보내 세션을 실행시킵니다. run을 하면 자동으로 현재 위치의 main.py 를 entry 파일로 인식하여 session을 실행하고, entry 파일이 없으면 에러가 발생합니다. -e 옵션으로 entry 파일을 바꿀 수 있습니다.


    Example:
        .. code-block:: console

            nsml run -d mnist

        -d 옵션을 설정하여 dataset을 꼭 지정해주셔야 합니다.


    Options:
        -d, --dataset string                   세션이 실행될 때 사용할 dataset 을 선택합니다.

        -g, --gpus string_or_integer           할당받을 gpu 의 갯수를 입력합니다.

                                               cpu로만 training하고 싶으면 옵션을 -g 0으로 설정합니다.

                                               GPU 사용량 rule은 :ref:`Policy<GPU policy>` 를 확인하시기 바랍니다.

                                               ex) nsml run -g 2

        -i, --interactive                      세션의 훈련이 다 끝난 뒤에 세션은 자동으로 삭제됩니다.

        -m, --memo string                      세션에 간단한 memo 를 입력할 수 있습니다.

                                               ex) nsml run -m 'LSTM'

        -e, --entry file                       세션이 실행될 때의 main entry 파일을 설정합니다.

                                               ex) nsml run -e lstm.py

        -a, --args string                      main entry 파일의 arguments 를 전달합니다.

                                               ex) nsml run -a "--batch 1000 --lr 0.02"

        -c, --cpus string_or_integer           사용할 cpu 갯수입니다. ex) nsml run -c 5

        --memory string                        필요한 CPU memory 사이즈입니다. (default '24G')

        --shm-size string                      필요한 share memory 사이즈 입니다. (default '1G')

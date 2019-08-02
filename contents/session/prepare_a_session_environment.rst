.. _prepare session environment:

Prepare a session environment
-----------------------------

    session을 실행하기 전, 아래와 같은 방법으로 NSML server에서 실행될 code의 실행 환경을 설정해야 합니다.

        - pip로 install이 가능한 경우
            setup.py 혹은 requirements.txt 파일에 아래와 같이 python library 를 기입합니다.

            .. code-block:: python

                from distutils.core import setup

                setup(
                    name='ladder_networks',
                    version='1.0',
                    install_requires=[
                        'matplotlib',
                        'tqdm',
                        'pillow'
                    ]
                )


        - pip로 install이 불가능한 경우
            docker로 실행 환경을 설정할 수 있습니다. setup.py 혹은 requirements.txt 상단에 ``'#nsml:'`` 를 붙여서 도커 image 이름을 적어주면 됩니다.

            ``setup.py``

            .. code-block:: python

                #nsml: nsml/default_ml:cuda9
                from distutils.core import setup

                setup(
                    name='ladder_networks',
                    version='1.0',
                    install_requires=[
                        'matplotlib',
                        'tqdm',
                        'pillow'
                    ]
                )

            ``requirements.txt``

            .. code-block:: bash

                #nsml: nsml/default_ml:cuda9
                matplotlib
                tqdm
                pillow

            .. note::

                    만약 setup.py 와 requirements.txt가 둘 다 있으 setup.py 를 먼저 설치하고, requirements.txt 를 설치합니다.

            .. note::

                    docker 환경을 기재하지 않으면 `nsml/default_ml:latest`_ 를 사용합니다. (latest 버전은 계속 바뀔 수 있습니다.)

        - ``apt-get`` 으로 패키지를 설치해야 할 필요가 있을 경우
            ``nsml_package.txt`` 파일을 만들어서 필요한 라이브러리를 기재하면 설치됩니다.

            ``nsml_package.txt``

            .. code-block:: bash

                wget
                vim

            .. note::

                apt-get -y update && apt-get -y install [package] 로 설치됩니다. 그 외에 설치하는데 더 많은 명령어가 필요한 경우, docker 환경을 새로 구성하시는 걸 추천합니다.



    .. _nsml/default_ml:latest: https://airush.nsml.navercorp.com/support


NSML ignore
^^^^^^^^^^^

    :ref:`nsml run<nsml run>` 으로 session을 실행시킬 때 필요 없는 파일들도 함께 올라가면서 시간이 오래 걸릴 수 있습니다.
    session 실행과 관계 없는 파일 목록을 ``.gitignore`` 와 같은 형식으로 ``.nsmlignore`` 에 기재하면, 필요 없는 파일이 올라가는 것을 막을 수 있습니다.

    ``.nsmlignore``

    .. code-block:: bash

        images/
        models/
        data/

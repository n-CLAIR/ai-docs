.. _getting started:

Getting started
===============


Install nsml
------------

    https://ai.nsml.navercorp.com/download 페이지에서 자신의 플랫폼에 맞는 NSML을 다운받습니다.

    혹은 `wget` 명령어를 이용해서 받습니다. (아래 예제는 mac버전의 NSML을 다운받습니다.)

    .. code-block:: console

        wget https://github.com/n-CLAIR/nsml_client-hack/raw/master/nsml_client.darwin.amd64.hack.tar.gz



Install local-nsml
------------------

    What is a local-nsml?
        NSML에 올리는 코드를 로컬 환경에서 디버깅할 때, NSML의 라이브러리에 대해서 생기는 `ImportError` 를 방지하기 위한 파이썬 패키지입니다.

    pip가 이미 설치되어 있다는 전제 하에, 아래 명령어를 입력하면 됩니다.

    .. code-block:: console

        pip install git+https://github.com/n-CLAIR/nsml-local


Login
------

    NSML을 사용하기 위해선 로그인을 해야 합니다.
    Github 아이디와 비밀번호로 로그인합니다. 아래 소스 코드에서는 ``nsmlteam`` 을 Github 아이디로 사용하여 로그인하겠습니다.

    .. code-block:: console

        $ nsml login
        INFO[2019/07/18 16:05:38.667] connecting to ai-cli.nsml.navercorp.com:18553
        GitHub Username: nsml-admin
        GitHub Password: ****************
        INFO[2019/07/18 16:05:55.570] Welcome to NSML!

Path registration
------------------

    다양한 위치에서 nsml을 실행하기 위해서 path 설정을 해주는 것을 권장합니다.
    nsml login을 실행했을 때 다음과 같은 오류 메시지가 뜨는 경우가 발생하는 경우에도 Path 설정을 해주어야 합니다.

    .. code-block:: console

        -bash: nsml: command not found


    path 설정법을 알아보겠습니다. 먼저 nsml 실행파일이 있는 폴더에 들어간 뒤, pwd를 입력하고 나온 path를 복사합니다.
    pwd로 ``/Users/user/Documents/nsml_client.darwin.amd64.hack`` 가 나왔다고 가정합니다.

    .. code-block:: console

        $ pwd
        /Users/user/Documents/nsml_client.darwin.amd64.hack

    그리고 ``export PATH=$PATH:`` 명령어 뒤에 pwd에서 나온 path를 붙여주고 명령어를 실행합니다.
    ``export PATH=$PATH:[pwd path]`` 형식입니다.

    .. code-block:: console

        $ export PATH=$PATH:/Users/user/Documents/nsml_client.darwin.amd64.hack
        $

    경로 설정이 완료되면 어떤 path 상에서도 nsml login이 가능합니다.


Run a session
-------------

    nsml run을 할 때는 dataset을 -d 옵션으로 반드시 지정해야 합니다. 예제의 dataset 이름은 mnist이며 ``-d mnist`` 로 지정합니다. ``-e main.py`` 로 entry 파일(시작 파일)를 옵션으로 같이 지정할 수 있습니다.

    .. code-block:: console

        nsml run -d mnist -e main.py


    아래 예제에서는 이번 해커톤의 baseline code를 실행시켜보겠습니다.
    :ref:`nsml run <nsml run>` 을 이용합니다.
    
    Github의 baseline 레파지토리를 먼저 clone합니다.

    .. code-block:: console

        $ git clone https://github.com/clovaai/speech_hackathon_2019.git
        Cloning into 'airush'...
        remote: Enumerating objects: 48, done.
        remote: Counting objects: 100% (48/48), done.
        remote: Compressing objects: 100% (31/31), done.
        remote: Total 48 (delta 14), reused 0 (delta 0), pack-reused 0
        Unpacking objects: 100% (48/48), done.

        $ nsml run -d mnist -e main.py
        INFO[2019/07/18 16:11:20.959] .nsmlignore check - start
        INFO[2019/07/18 16:11:20.959] .nsmlignore check - done
        INFO[2019/07/18 16:11:20.996] file integrity check - start
        INFO[2019/07/18 16:11:20.998] file integrity check - done
        INFO[2019/07/18 16:11:21.001] .nsmlignore 16 B - start
        INFO[2019/07/18 16:11:21.001] .nsmlignore 16 B - done (1/5 20.00%) (16 B/18 KiB 0.09%)
        INFO[2019/07/18 16:11:21.001] README.md 9.1 KiB - start
        INFO[2019/07/18 16:11:21.001] README.md 9.1 KiB - done (2/5 40.00%) (9.2 KiB/18 KiB 50.32%)
        INFO[2019/07/18 16:11:21.001] data_loader.py 1.5 KiB - start
        INFO[2019/07/18 16:11:21.002] data_loader.py 1.5 KiB - done (3/5 60.00%) (11 KiB/18 KiB 58.57%)
        INFO[2019/07/18 16:11:21.002] main.py 7.3 KiB - start
        INFO[2019/07/18 16:11:21.002] main.py 7.3 KiB - done (4/5 80.00%) (18 KiB/18 KiB 98.81%)
        INFO[2019/07/18 16:11:21.002] setup.py 221 B - start
        INFO[2019/07/18 16:11:21.002] setup.py 221 B - done (5/5 100.00%) (18 KiB/18 KiB 100.00%)
        .....
        Building docker image. It might take for a while
        ......
        Session nsmlteam/mnist/1 is started


    지금까지 NSML의 기본 사용법을 알아보았습니다.  다음 파트부터는 NSML에서 사용하는 명령어들을 알아보겠습니다.

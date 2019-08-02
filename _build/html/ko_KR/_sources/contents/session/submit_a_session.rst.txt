.. _nsml submit:

Submit a session
----------------

    Usage:
        +------------------------------------------------------+
        | **nsml submit** *Options* SESSION_NAME *CHECKPOINT*  |
        +------------------------------------------------------+

        session 을 submit 하여서 leaderboard 에 점수를 제출합니다. 하루에 submit 횟수는 제한이 없습니다. 다만 submit을 한 번 했다면 1시간 후에 다시 submit이 가능합니다. 즉, submit 시간 간격은 1시간이 넘어야 합니다. (단, -t 옵션을 사용하는 submit은 submit 시간 간격 카운트에 포함되지 않습니다.)

    Example:
        .. code-block:: console

            nsml submit nsmlteam/mnist/4 32

        .. code-block:: console

            nsml submit -t nsmlteam/mnist/4 32

    Options:
        -t, --test

            실제로 점수를 제출하기 전, 데이터의 포맷 오류나 기타 버그들을 찾기 위해

            지원하는 debug 모드(test 모드)로 session 을 제출합니다.

            test 모드로 제출 후 session이 새로 생기면 :ref:`logs<nsml logs>` 를 보고

            debugging 을 할 수 있습니다.

    Troubleshooting:
        submit 도중에

        .. code-block:: console

            Error: Submit/infer session is stopped right after runnig. Please check your code again

        위와 같은 메시지가 나타난다면, :ref:`nsml.paused()<nsml.paused()>` 가 호출되기 전에 에러가 발생한 것으로, 크게 두 가지로 나눌 수 있습니다.

        1. :ref:`nsml.paused()<nsml.paused()>` 호출되기 전 test_data 또는 test_label에 접근하는 경우

        2. :ref:`nsml.load()<nsml.load()>` 도중 에러가 난 경우

        위와 같은 문제가 발생할 때는 :ref:`nsml submit -t SESSION CKPT<nsml submit>` 를 통해서 디버깅을 할 수 있습니다.

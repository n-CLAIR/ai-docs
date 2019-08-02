.. _nsml.paused():

nsml.paused
-----------
.. py:function:: nsml.paused(scope=None)

    :ref:`nsml fork<nsml fork>`, :ref:`nsml submit<nsml submit>` 과 같이 nsml command 를 사용해서 세션을 재생성하는 명령어를 실행할 때 사용되는 함수입니다.

    내부적으로 main entry 파일에 \\-\\-pause 1 이란 옵션을 줘서 세션을 재생성하므로, entry 파일에서 'pause(int)' 란 옵션을 받을 수 있어야 합니다.

    각 커맨드에 따라서 동작방식이 다릅니다.

    :param scope: entry 파일 main 함수의 scope 입니다.

    .. warning::

        entry 파일의 main 함수가 있다면 main 함수의 ``locals()`` 변수를 넘겨주어야 합니다. 그렇지 않으면 에러가 발생합니다.


    :ref:`nsml fork<nsml fork>`
        :ref:`nsml.load<nsml.load()>` 함수가 호출된 후 `nsml.paused`_ 함수는 끝납니다.


    :ref:`nsml submit<nsml submit>`
        test_data 를 evaluate 한 후에 결과는 nsml server 로
        전송되고 :ref:`leaderboard<leaderboard>` 에 기록됩니다.

    .. note::

        :ref:`nsml.bind()<nsml.bind()>` 가 호출된 후에 :ref:`nsml.paused()<nsml.paused()>` 함수가 호출되어야 합니다.

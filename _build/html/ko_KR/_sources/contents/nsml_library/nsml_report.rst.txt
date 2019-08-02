.. _nsml.report():

nsml.report
-----------

.. py:function:: nsml.report(summary=False, scope=None, **kwargs)

    변수의 변화량을 기록하여서 web 에서 scalar, tensorboard, visdom 에 그래프를 그릴 때 사용됩니다.

    :param summary: 값이 True이면, :ref:`nsml ps<nsml ps>` 에 값이 보입니다.
    :type summary: bool or None
    :param scope: `locals()` 로 값을 주면, 해당 범위의 값에 :ref:`nsml exec <nsml exec>` 으로 접근할 수 있습니다. 또는 python 의 eval
                                로 세션에 접근할 수 있습니다.

    :param step: scalar 그래프에서 보여줄 x 축 값을 설정합니다.
    :param str \*\*kwargs: 트래킹할 변수를 key=value 형식으로 입력합니다. (ex. loss=loss)
                            (walltime key 값은 내부에서 자동으로 time.time() 으로 설정되므로 만약 walltime=variable 로 값을 넘겨질 경우 time.time() 의 값으로 overwrite됩니다.)
    :type \*\*kwargs: str or None
    :raises TypeError:
        트래킹할 변수에 json serialize 할 수 없는 값을 넘길경우 (ex. Tensortype) 에러가 발생합니다.

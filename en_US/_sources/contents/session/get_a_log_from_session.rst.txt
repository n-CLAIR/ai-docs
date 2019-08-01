
.. _nsml logs:

Get a log from session
----------------------

    Usage:
        +------------------------------------------+
        | **nsml logs** *Options* SESSION_NAME     |
        +------------------------------------------+

    Description:
        session 에서 만들어진 log 를 보여줍니다.

    Example:
        .. code-block:: console

            nsml logs -f nsmlteam/mnist/4

    Options:
        -f, --follow        session 이 종료될 때까지 log 를 streaming 합니다.

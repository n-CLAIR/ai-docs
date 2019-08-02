.. _nsml ps:

Check a session status
----------------------

    Usage:
      +---------------------------------+
      | **nsml ps** *Options*           |
      +---------------------------------+

    Description:
        session 들의 목록을 보여줍니다.

    Example:
        .. code-block:: console

            nsml ps -n 10


    Options:
        -n, --last string_or_integer      가장 최근 생성된 n 개의 session 들을 보여줍니다.

        -a, --all                         종료된 session 까지 포함하여 보여줍니다.

        -j, --json-return
            json format 으로 출력합니다.

        -d, --data dataset     Session 을 dataset으로 filtering하여 보여줍니다.
        
                              ex) nsml ps -d mnist

        -s, --search           해당하는 session만 보여줍니다. ex) nsml ps -s SESSION
